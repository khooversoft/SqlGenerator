using DocumentFormat.OpenXml.Office2010.ExcelAc;
using DocumentFormat.OpenXml.Wordprocessing;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;
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

        foreach (var schema in _physicalModel.Schemas.Where(x => x.Security.ForView()))
        {
            list += (InstructionType.PushFolder, schema.Name);
            list += (InstructionType.PushFolder, "Views");

            list += _physicalModel.Tables
                .Select(x => BuildViewModel(x, buildType));

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
            BuildType.SchemaOnly => GetSchemaCommand(schema.Name).ToEnumerable(),

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

        static string GetSchemaCommand(string name) => $"CREATE SCHEMA {name};";
    }


    private Instructions BuildTableModel(TableModel tableModel, BuildType buildType)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, tableModel.Name.CalculateFileName());

        list += _headers;

        list += buildType switch
        {
            BuildType.SchemaOnly => Array.Empty<string>(),
            _ => new Sequence<string>()
                + $"DROP TABLE IF EXISTS {tableModel.Name};"
                + "GO"
                + ""
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
            IndexType.Hash => new Sequence<string>()
                                + HashIndexInstructions(tableModel)
                                + ";",

            IndexType.Cluster => new Sequence<string>()
                                    + new[] { ";", "GO", string.Empty }
                                    + ClusterIndexInstructions(tableModel)
                                    + new[] { "GO", string.Empty },

            _ => Array.Empty<string>(),
        };

        return list;
    }

    // Creating view for all non data security groups (lookup schema to get security level of schema)
    //   Unrestricted view => both Restricted and PII columns are hashed
    //   Restricted view => only PII columns are hashed
    //   PII view => all columns are visible
    private Instructions BuildViewModel(TableModel tableModel, BuildType buildType)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, tableModel.Name.CalculateFileName());

        list += _headers;

        list += buildType switch
        {
            BuildType.SchemaOnly => Array.Empty<string>(),
            _ => new Sequence<string>()
                + $"DROP VIEW IF EXISTS {tableModel.Name};"
                + "GO"
                + ""
        };

        list += "";
        list += $"CREATE VIEW {tableModel.Name}";
        list += "AS";
        list += InstructionType.TabPlus;
        list += "SELECT";
        list += InstructionType.TabPlus;

        var columns = tableModel.Columns.Where(x => x.PrimaryKey)
            .Concat(_physicalModel.PrefixColumns.Where(x => !x.Private))
            .Concat(tableModel.Columns.Where(x => !x.PrimaryKey))
            .Concat(_physicalModel.SuffixColumns.Where(x => !x.PrimaryKey))
            .ToArray();

        SchemaModel schemaModel = _physicalModel.GetSchemaModel(tableModel.Name.Schema).NotNull();

        list += columns
            .Select(x => BuildColumnModel(x, schemaModel))
            .SequenceJoin(x => x += ",");

        list += InstructionType.TabMinus;
        list += $"FROM {tableModel.Name} x";
        list += $"WHERE x.[ASAP_DeleteDateTime] IS NOT NULL";
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
        return columnModel.Security switch
        {
            Security.Unrestricted => formatNormal(columnModel.Name),
            Security.Data => throw new ArgumentException("Data security"),

            Security v when v == schemaModel.Security => formatNormal(columnModel.Name),

            _ => formatProtected(columnModel.Name),
        };


        string formatNormal(string name) => $"x.[{name}]" + displayAs();

        string formatProtected(string name) =>
            $"HASHBYTES('SHA2_256', {castAs(name, columnModel.DataType)})" + (displayAs().ToNullIfEmpty() ?? $" AS [{name}]");

        string displayAs() => columnModel.ShortName switch
        {
            null => string.Empty,
            string v when v.IsEmpty() => string.Empty,
            string v => $" AS [{v}]",
        };

        string castAs(string name, string dataType)
        {
            return dataType.ToLower().ToNullIfEmpty() switch
            {
                null => throw new ArgumentException("Data type is null"),

                string v when v.StartsWith("char") => normalFmt(name),
                string v when v.StartsWith("nchar") => normalFmt(name),
                string v when v.StartsWith("varchar") => normalFmt(name),
                string v when v.StartsWith("nvarchar") => normalFmt(name),

                _ => castFmt(name),
            };

            string normalFmt(string name) => $"x.[{name}]";
            string castFmt(string name) => $"CAST(x.[{name}] AS NVARCHAR(50))";
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
        string v => $"CREATE CLUSTERED INDEX {tableModel.Name}_ix on {tableModel.Name} ({v});".ToEnumerable(),
    };
}
