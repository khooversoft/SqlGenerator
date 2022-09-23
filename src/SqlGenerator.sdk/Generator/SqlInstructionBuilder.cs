using SqlGenerator.sdk.Model;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public enum BuildType
{
    SchemaOnly,
    Overwrite
}

public class SqlInstructionBuilder
{
    private readonly PhysicalModel _physicalModel;
    private readonly IReadOnlyList<string> _headers = new[]
    {
        "-- -----------------------------------------------------",
        "-- Auto generated",
        "-- -----------------------------------------------------",
        "",
    };

    public SqlInstructionBuilder(PhysicalModel model) => _physicalModel = model.Verify();

    public Instructions Build(BuildType buildType)
    {
        var list = new Instructions();

        list += (InstructionType.PushFolder, "Schema");
        list += _physicalModel.Schemas.Select(x => BuildSchemaModel(x, buildType));
        list += InstructionType.PopFolder;

        foreach (var schema in _physicalModel.Schemas.Where(x => x.Security.ForTable()))
        {
            list += (InstructionType.PushFolder, schema.Name);

            list += (InstructionType.PushFolder, "Tables");
            list += _physicalModel.Tables
                .Where(x => x.Name.Schema == schema.Name)
                .Select(x => BuildTableModel(x, buildType));

            list += InstructionType.PopFolder;
            list += InstructionType.PopFolder;
        }

        foreach (SchemaModel schema in _physicalModel.Schemas.Where(x => x.Security.ForView()))
        {
            list += (InstructionType.PushFolder, schema.Name);
            list += (InstructionType.PushFolder, "Views");

            list += _physicalModel.Tables
                .Select(x => BuildViewModel(x, buildType, schema));

            list += InstructionType.PopFolder;
            list += InstructionType.PopFolder;
        }

        return list;
    }

    private Instructions BuildSchemaModel(SchemaModel schema, BuildType buildType)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, $"{schema.Name}.sql");

        list += buildType switch
        {
            BuildType.SchemaOnly => $"CREATE SCHEMA {schema.Name};".ToEnumerable(),

            _ => new[]
            {
                $"IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = '{schema.Name}')",
                "BEGIN",
                $"  EXEC( 'CREATE SCHEMA {schema.Name};' )",
                "END",
                "GO",
                "",
            }
        };

        return list;
    }


    private Instructions BuildTableModel(TableModel tableModel, BuildType buildType)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, tableModel.Name.CalculateFileName());

        list += _headers;

        list += buildType switch
        {
            BuildType.SchemaOnly => Array.Empty<string>(),
            _ => new[]
            {
                $"IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = '{tableModel.Name.Schema}' AND TABLE_NAME = '{tableModel.Name.Name}')",
                "BEGIN",
                $"   DROP TABLE {tableModel.Name}",
                "END",
                "GO",
                "",
            }
        };

        list += $"CREATE TABLE {tableModel.Name}";
        list += "(";
        list += InstructionType.TabPlus;

        IReadOnlyList<ColumnModel> columns = tableModel.Columns.Where(x => x.PrimaryKey)
            .Concat(_physicalModel.PrefixColumns)
            .Concat(tableModel.Columns.Where(x => !x.PrimaryKey))
            .Concat(_physicalModel.SuffixColumns)
            .ToList();

        int maxNameColumnSize = columns.Max(x => x.Name.Length) + 6;

        list += columns
            .Select((x, i) => ColumnInstructions(x, i == columns.Count - 1, maxNameColumnSize))
            .Func(x => new Instructions() + x);

        list += InstructionType.TabMinus;
        list += ")";

        list += tableModel.IndexType switch
        {
            IndexType.Hash => HashIndexInstructions(tableModel),
            IndexType.Cluster => ClusterIndexInstructions(tableModel),
            _ => Array.Empty<string>(),
        };
        list += ";";

        if (buildType == BuildType.Overwrite) list += new[] { "GO", "" };

        return list;
    }

    // Creating view for all non data security groups (lookup schema to get security level of schema)
    //   Unrestricted view => both Restricted and PII columns are hashed
    //   Restricted view => only PII columns are hashed
    //   PII view => all columns are visible
    private Instructions BuildViewModel(TableModel tableModel, BuildType buildType, SchemaModel schema)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, tableModel.Name.CalculateFileName());

        list += _headers;

        var viewName = new SqlObjectName { Schema = schema.Name, Name = tableModel.Name.Name };

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

        var columns = tableModel.Columns.Where(x => x.PrimaryKey)
            .Concat(_physicalModel.PrefixColumns.Where(x => !x.Private))
            .Concat(tableModel.Columns.Where(x => !x.PrimaryKey))
            .Concat(_physicalModel.SuffixColumns.Where(x => !x.PrimaryKey))
            .ToArray();

        list += columns
            .Select(x => BuildColumnModel(x, schema))
            .SequenceJoin(x => x += ",");

        list += InstructionType.TabMinus;
        list += $"FROM {tableModel.Name} x";
        list += $"WHERE x.[ASAP_DeleteDateTime] IS NULL";
        list += InstructionType.TabMinus;
        list += ";";

        list += buildType switch
        {
            BuildType.SchemaOnly => Array.Empty<string>(),
            _ => "GO".ToEnumerable(),
        };

        return list;
    }

    private string BuildColumnModel(ColumnModel columnModel, SchemaModel schemaModel)
    {
        return columnModel.CanShowValue(schemaModel.Security) switch
        {
            true => $"x.[{columnModel.Name}]" + displayAs(),

            false => $"HASHBYTES('SHA2_256', {castAs(columnModel.Name, columnModel.DataType)})" + displayAs(columnModel.Name),
        };

        string displayAs(string? defaultName = null) => columnModel.ShortName switch
        {
            string v => $" AS [{v}]",
            _ => defaultName switch
            {
                null => string.Empty,
                _ => $" AS [{defaultName}]",
            },
        };

        string castAs(string name, string dataType)
        {
            return dataType.ToLower().Trim().ToNullIfEmpty() switch
            {
                null => throw new ArgumentException("Data type is null"),

                string v when v.StartsWith("char") => normalFmt(name),
                string v when v.StartsWith("nchar") => normalFmt(name),
                string v when v.StartsWith("varchar") => normalFmt(name),
                string v when v.StartsWith("nvarchar") => normalFmt(name),

                _ => $"CAST(x.[{name}] AS NVARCHAR(50))",
            };

            string normalFmt(string name) => $"x.[{name}]";
        }
    }

    private Instruction ColumnInstructions(ColumnModel columnDefModel, bool last, int maxColumnSize)
    {
        const int maxDataTypeColumn = 20;

        string column = $"[{columnDefModel.Name}]";
        string dataType = columnDefModel.DataType;
        string nullable = columnDefModel.NotNull ? "NOT NULL" : "NULL";

        return new Instruction
        {
            Type = InstructionType.Code,
            Text = new[]
            {
                Format(column, maxColumnSize),
                Format(dataType, maxDataTypeColumn),
                nullable
            }.Join(" ") + (last ? string.Empty : ","),
        };

        static string Format(string value, int columnSize) => value + (columnSize - value.Length).Func(x => x <= 0 ? string.Empty : new string(' ', x));
    }

    static IEnumerable<string> HashIndexInstructions(TableModel tableModel) => tableModel.Columns
        .Where(x => x.PrimaryKey)
        .Concat(tableModel.Columns.Where(x => x.PrimaryKey))
        .Take(1)
        .Select(x => $"[{x.Name}]")
        .Join(", ") switch
    {
        string v when v.IsEmpty() => Array.Empty<string>(),
        string v => $"WITH (DISTRIBUTION = HASH ({v}), CLUSTERED COLUMNSTORE INDEX)".ToEnumerable(),
    };

    static IEnumerable<string> ClusterIndexInstructions(TableModel tableModel) => tableModel.Columns
        .Where(x => x.PrimaryKey)
        .Select(x => $"[{x.Name}]")
        .Join(", ") switch
    {
        string v when v.IsEmpty() => Array.Empty<string>(),
        string v => $"WITH ( CLUSTERED INDEX ({v}) )".ToEnumerable(),
        //string v => $"CREATE CLUSTERED INDEX {tableModel.Name}_ix on {tableModel.Name} ({v});".ToEnumerable(),
    };
}
