using System.Diagnostics;
using DataTools.sdk.Model;
using DocumentFormat.OpenXml.Wordprocessing;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Model;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class SqlViewBuilder
{
    private const string _tableFormat = "{tableName}";
    private readonly PhysicalModel _physicalModel;
    private readonly SqlProjectOption _option;

    public SqlViewBuilder(PhysicalModel model, SqlProjectOption option)
    {
        _physicalModel = model.NotNull();
        _option = option.NotNull();
    }


    // Creating view for all non data security groups (lookup schema to get security level of schema)
    //   Unrestricted view => both Restricted and PII columns are hashed
    //   Restricted view => only PII columns are hashed
    //   PII view => all columns are visible
    public Instructions BuildViewModel(TableModel tableModel, BuildType buildType, SchemaModel schema)
    {
        var list = new Instructions();

        IReadOnlyList<ColumnModel> columns = tableModel.Columns.Where(x => x.PrimaryKey)
            .Concat(_physicalModel.PrefixColumns.Where(x => !x.Private))
            .Concat(tableModel.Columns.Where(x => !x.PrimaryKey))
            .Concat(_physicalModel.SuffixColumns.Where(x => !x.Private))
            .Where(x => FilterView(tableModel, x))
            .ToArray();

        if (columns.Count == 0) return list;

        IReadOnlyList<SqlInstruction> sqlInstructions = new Sequence<SqlInstruction>()
            + AddNormalColumns(columns, schema)
            + AddInstructionsForSingle(tableModel, columns, schema)
            + AddInstructionsForTemplate(tableModel, columns, schema)
            + AddInstructionsForXrefTable(tableModel, columns, schema);

        sqlInstructions = SetIndex(sqlInstructions);

        var viewName = new SqlObjectName
        {
            Schema = schema.Name,
            Name = GetRealViewName(tableModel, schema),
        };

        list += (InstructionType.Stream, viewName.CalculateFileName());
        list += SqlInstructionBuilder._headers;

        list += buildType switch
        {
            BuildType.SchemaOnly => Array.Empty<string>(),
            _ => new[]
            {
                $"IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = '{viewName.Schema}' AND TABLE_NAME = '{viewName.Name}')",
                "BEGIN",
                $"   DROP VIEW {viewName}",
                "END",
                "GO",
                "",
            }
        };

        list += "";
        list += $"CREATE VIEW {viewName}";
        list += "AS";
        list += InstructionType.TabPlus;
        list += "SELECT";
        list += InstructionType.TabPlus;

        list += sqlInstructions
            .Where(x => x.Type == InstrType.Select)
            .OrderBy(x => x.Index)
            .Select(x => x.Line)
            .SequenceJoin(x => x += ",");

        list += InstructionType.TabMinus;
        list += $"FROM {tableModel.Name} x";

        list += InstructionType.TabPlus;
        list += sqlInstructions
            .Where(x => x.Type == InstrType.Join)
            .Select(x => x.Line)
            .ToArray();
        list += InstructionType.TabMinus;
        list += InstructionType.TabMinus;

        var where = sqlInstructions
            .Where(x => x.Type == InstrType.Where)
            .Select(x => x.Line)
            .Join(x => "AND " + x)
            .ToArray();

        if (where.Length > 0)
        {
            list += InstructionType.TabPlus;
            list += $"WHERE";

            list += InstructionType.TabPlus;
            list += where;
            list += InstructionType.TabMinus;

            list += InstructionType.TabMinus;
        }

        list += ";";

        list += buildType switch
        {
            BuildType.SchemaOnly => Array.Empty<string>(),
            _ => "GO".ToEnumerable(),
        };

        return list;
    }

    private bool FilterView(TableModel tableModel, ColumnModel columnModel)
    {
        bool excludeNot = _physicalModel.Commands
            .Where(x => x.Type == CommandType.ExcludeViewNot)
            .Any(x => PatternMatch.IsMatch(x.Pattern, $"{tableModel.Name.Name}.{columnModel.Name}"));

        if (excludeNot) return true;

        bool exclude = _physicalModel.Commands
            .Where(x => x.Type == CommandType.ExcludeView)
            .Any(x => PatternMatch.IsMatch(x.Pattern, $"{tableModel.Name.Name}.{columnModel.Name}"));

        return !exclude;
    }

    private string GetRealViewName(TableModel tableModel, SchemaModel schema)
    {
        string realViewName = schema.Format switch
        {
            null => tableModel.Name.Name,
            not null => schema.Format.Replace(_tableFormat, tableModel.Name.Name),
        };

        realViewName = schema.MaxColumnSize switch
        {
            null => realViewName,
            int v => _option?.ShortName(realViewName, v) ?? realViewName,
        };

        return realViewName;
    }

    private IReadOnlyList<SqlInstruction> AddNormalColumns(IReadOnlyList<ColumnModel> columns, SchemaModel schemaModel) => columns
        .Select((x, i) => new SqlInstruction
        {
            Type = InstrType.Select,
            Line = BuildColumnModel(x, schemaModel),
            Index = i * 10,
            ColumnName = x.Name,
        })
        .ToArray();

    private string BuildColumnModel(ColumnModel columnModel, SchemaModel schemaModel)
    {
        return columnModel.Security.CanShow(schemaModel.Security) switch
        {
            true => $"x.[{columnModel.Name}]" + displayAs(),

            false => ApplySecurity($"x.[{columnModel.Name}]", columnModel.DataType) + displayAs(columnModel.Name)
        };

        string? getRealColumnName() => schemaModel.MaxColumnSize switch
        {
            null => null,
            int v => _option?.ShortName(columnModel.Name, v) ?? columnModel.Name,
        };

        string displayAs(string? defaultName = null) => getRealColumnName() switch
        {
            string v => $" AS [{v}]",
            _ => defaultName switch
            {
                null => string.Empty,
                _ => $" AS [{defaultName}]",
            },
        };
    }

    private IReadOnlyList<SqlInstruction> AddInstructionsForSingle(TableModel tableModel, IReadOnlyList<ColumnModel> columns, SchemaModel schemaModel)
    {
        CommandFunction tableCommands = new CommandFunction()
            .Add("tableName", tableModel.Name.Name)
            .Add("schemaName", schemaModel.Name)
            .Add("security", wrapSecurity);

        var result = _physicalModel.AddInstructions
            .Where(x => x.Model == AddInstructionType.Single)
            .Where(x => columns.Any(y => x.IsMatch($"{tableModel.Name.Name}.{y.Name}")))
            .SelectMany(x => new[]
                {
                    x.IsSelect() ? new SqlInstruction { Type = InstrType.Select, Line =  tableResolve(x.SelectLine), SelectLineOrder = x.SelectLineOrder } : null,
                    x.IsJoin() ? new SqlInstruction { Type = InstrType.Join, Line = tableResolve(x.JoinLine) } : null,
                    x.IsWhere() ? new SqlInstruction { Type = InstrType.Where, Line = tableResolve(x.WhereLine) } : null,
                }.OfType<SqlInstruction>()
            ).ToArray();

        return result;

        string tableResolve(string? value) => value.Func(x => tableCommands.Resolve(x.NotEmpty()));

        string wrapSecurity(string[] values)
        {
            (string pattern, string sqlCommand) = values
                .Select(x => x.Trim())
                .ToArray()
                .Assert(x => x.Length == 2, x => $"Syntax error in security policy, policy={x}")
                .Func(x => (x[0], x[1]));

            SecurityModel? policy = _physicalModel
                .Security
                .FirstOrDefault(x => PatternMatch.IsMatch(x.Pattern, pattern));

            return policy switch
            {
                null => sqlCommand,
                SecurityModel v => new SecurityList(v.Security).CanShow(schemaModel.Security) switch
                {
                    true => sqlCommand,
                    false => ApplySecurity(sqlCommand, "nvarchar"),
                },
            };
        };
    }

    private IReadOnlyList<SqlInstruction> AddInstructionsForTemplate(TableModel tableModel, IReadOnlyList<ColumnModel> columns, SchemaModel schemaModel)
    {
        (AddInstruction Inst, ColumnModel Column)[] columnImpacted = _physicalModel.AddInstructions
            .Where(x => x.Model == AddInstructionType.Template)
            .SelectMany(x => columns.Where(c => x.IsMatch($"{tableModel.Name.Name}.{c.Name}")), (x, m) => (Inst: x, Column: m))
            .ToArray();

        var result = columnImpacted
            .Select((x, i) => (x.Inst, x.Column, Cmd: createCommandFunction(x.Column, i)))
            .SelectMany(x => new[]
                {
                    x.Inst.IsSelect() ? new SqlInstruction
                        {
                            Type = InstrType.Select,
                            Line =  x.Cmd.Resolve(x.Inst.SelectLine.NotEmpty()),
                            SelectLineOrder = !x.Inst.SelectLineOrder.IsEmpty() ? x.Cmd.Resolve(x.Inst.SelectLineOrder) : null,
                        } : null,
                    x.Inst.IsJoin() ? new SqlInstruction { Type = InstrType.Join, Line = x.Cmd.Resolve(x.Inst.JoinLine.NotEmpty()) } : null,
                    x.Inst.IsWhere() ? new SqlInstruction { Type = InstrType.Where, Line = x.Cmd.Resolve(x.Inst.WhereLine.NotEmpty()) } : null,
                }.OfType<SqlInstruction>()
            ).ToArray();

        return result;

        CommandFunction createCommandFunction(ColumnModel columnModel, int index) => new CommandFunction()
            .Add("schemaName", schemaModel.Name)
            .Add("tableName", tableModel.Name.Name)
            .Add("columnName", columnModel.Name)
            .Add("alias", $"A{index}")
            .Add("mapColumnName", x => MapColumnName(columnModel.Name.Replace(x[0], string.Empty), columns, schemaModel));
    }

    private IReadOnlyList<SqlInstruction> AddInstructionsForXrefTable(TableModel tableModel, IReadOnlyList<ColumnModel> columns, SchemaModel schemaModel)
    {
        (AddInstruction Inst, XRefTableModel Table, ColumnModel Column)[] columnImpacted = _physicalModel.AddInstructions
            .Where(x => x.Model == AddInstructionType.XrefTable)
            .SelectMany(x => _physicalModel.XRefTables.Where(y => x.IsMatch(y) && y.TableName.EqualsIgnoreCase(tableModel.Name.Name)), (o, i) => (Inst: o, Table: i))
            .SelectMany(x => columns.Where(c => x.Table.ColumnName.EqualsIgnoreCase(c.Name)), (o, i) => (o.Inst, o.Table, Column: i))
            .OrderBy(x => x.Column.ColumnIndex)
            .ToArray();

        var result = columnImpacted
            .Select((x, i) => (x.Inst, x.Column, Cmd: createCommandFunction(x.Column, x.Table, i)))
            .SelectMany(x => new[]
                {
                    x.Inst.IsSelect() ? new SqlInstruction
                        {
                            Type = InstrType.Select,
                            Line =  x.Cmd.Resolve(x.Inst.SelectLine.NotEmpty()),
                            SelectLineOrder = !x.Inst.SelectLineOrder.IsEmpty() ? x.Cmd.Resolve(x.Inst.SelectLineOrder) : null,
                        } : null,
                    x.Inst.IsJoin() ? new SqlInstruction { Type = InstrType.Join, Line = x.Cmd.Resolve(x.Inst.JoinLine.NotEmpty()) } : null,
                    x.Inst.IsWhere() ? new SqlInstruction { Type = InstrType.Where, Line = x.Cmd.Resolve(x.Inst.WhereLine.NotEmpty()) } : null,
                }.OfType<SqlInstruction>()
            ).ToArray();

        return result;

        CommandFunction createCommandFunction(ColumnModel columnModel, XRefTableModel table, int index) => new CommandFunction()
            .Add("schemaName", schemaModel.Name)
            .Add("tableName", tableModel.Name.Name)
            .Add("columnName", columnModel.Name)
            .Add("alias", $"A{index}")
            .Add("lookupTable", table.LookupTable)
            .Add("lookupColumnName", table.LookupColumnName)
            .Add("lookupDisplayColumnName", table.LookupDisplayColumnName)
            .Add("mapColumnName", x => MapColumnName(columnModel.Name + x, columns, schemaModel));
    }

    private string MapColumnName(string columnName, IReadOnlyList<ColumnModel> columns, SchemaModel schemaModel)
    {
        string proposeColumnName = GetColumnName(columnName, schemaModel);

        return columns.Count(x => x.Name.EqualsIgnoreCase(proposeColumnName)) switch
        {
            0 => proposeColumnName,
            int v => proposeColumnName + v.ToString(),
        };
    }

    private string GetColumnName(string columnName, SchemaModel schemaModel) => schemaModel.MaxColumnSize switch
    {
        null => columnName,
        int v => _option?.ShortName(columnName, v) ?? columnName,
    };

    private IReadOnlyList<SqlInstruction> SetIndex(IReadOnlyList<SqlInstruction> instructions)
    {
        var result = instructions
            .Select(x => x switch
            {
                SqlInstruction v when v.Type == InstrType.Select && !x.SelectLineOrder.IsEmpty() => v with
                {
                    Index = getIndex(v.Index, v.SelectLineOrder),
                },

                _ => x
            }).ToArray();

        return result;

        int? getIndex(int? defaultIndex, string? selectLineOrder) => selectLineOrder.IsEmpty() ? defaultIndex : instructions
            .Where(x => !x.ColumnName.IsEmpty() && x.ColumnName.EqualsIgnoreCase(selectLineOrder))
            .FirstOrDefault()?.Index + 1 ?? defaultIndex;
    }

    private string ApplySecurity(string sqlInstruction, string dataType)
    {
        return $"CONVERT([varchar](100), HASHBYTES('SHA2_256', {castAs(sqlInstruction, dataType)}), 1)";


        static string castAs(string sqlInstruction, string dataType) => dataType.ToLower().Trim().ToNullIfEmpty() switch
        {
            null => throw new ArgumentException("Data type is null"),

            string v when v.StartsWith("char") => sqlInstruction,
            string v when v.StartsWith("nchar") => sqlInstruction,
            string v when v.StartsWith("varchar") => sqlInstruction,
            string v when v.StartsWith("nvarchar") => sqlInstruction,

            _ => $"CAST({sqlInstruction} AS NVARCHAR(50))",
        };
    }


    private enum InstrType
    {
        Select,
        Join,
        Where
    }

    private record SqlInstruction
    {
        public required InstrType Type { get; init; }
        public required string Line { get; init; } = null!;
        public int? Index { get; init; }
        public string? SelectLineOrder { get; init; }
        public string? ColumnName { get; init; }
    }
}
