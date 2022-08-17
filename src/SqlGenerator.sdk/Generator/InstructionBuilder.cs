using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class InstructionBuilder
{
    private readonly PhysicalModel _physicalModel;

    public InstructionBuilder(PhysicalModel model) => _physicalModel = model.Verify();

    public Instructions Build()
    {
        var list = new Instructions();

        list += (InstructionType.PushFolder, "Schema");
        list += _physicalModel.Schemas.Select(x => Build(x));
        list += InstructionType.PopFolder;

        foreach (var schema in _physicalModel.Schemas)
        {
            list += (InstructionType.PushFolder, schema.Name);

            list += (InstructionType.PushFolder, "Views");
            list += _physicalModel.Views.Where(x => x.Name.Schema == schema.Name).Select(x => Build(x));
            list += InstructionType.PopFolder;

            list += (InstructionType.PushFolder, "Tables");
            list += _physicalModel.Tables.Where(x => x.Name.Schema == schema.Name).Select(x => Build(x));
            list += InstructionType.PopFolder;

            list += InstructionType.PopFolder;
        }

        return list;
    }

    private Instructions Build(SchemaModel schema)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, $"{schema.Name}.sql");
        list += $"CREATE SCHEMA {schema.Name};";
        list += "GO";

        return list;
    }

    // Creating view for all non data security groups (lookup schema to get security level of schema)
    //   Unrestricted view => both Restricted and PII columns are hashed
    //   Restricted view => only PII columns are hashed
    //   PII view => all columns are visible
    private Instructions Build(ViewModel viewModel)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, viewModel.Name.CalculateFileName());

        list += $"CREATE VIEW {viewModel.Name}";
        list += "AS";
        list += InstructionType.TabPlus;
        list += "SELECT";
        list += InstructionType.TabPlus;

        var columns = viewModel.Columns.Where(x => x.HashKey)
            .Concat(_physicalModel.PrefixColumns.Select(x => x.ToColumnModel()))
            .Concat(viewModel.Columns.Where(x => !x.HashKey))
            .Concat(_physicalModel.SufixColumns.Select(x => x.ToColumnModel()))
            .ToList();

        SchemaModel schemaModel = _physicalModel.GetSchemaModel(viewModel.Name.Schema).NotNull();

        list += columns
            .Select((x, i) => Build(x, i == columns.Count - 1, schemaModel))
            .Func(x => new Instructions() + x);

        list += InstructionType.TabMinus;
        list += $"FROM {viewModel.Table} x";
        list += $"WHERE x.[ASAP_DeleteDateTime] != null";
        list += InstructionType.TabMinus;
        list += ";";
        list += "GO";

        return list;
    }

    private Instructions Build(TableModel tableModel)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, tableModel.Name.CalculateFileName());

        list += $"CREATE TABLE {tableModel.Name}";
        list += "(";
        list += InstructionType.TabPlus;

        IEnumerable<ColumnDefinitionModel> hashKeyColumns = tableModel.Columns.Where(x => x.HashKey);

        IReadOnlyList<ColumnDefinitionModel> columns = hashKeyColumns
            .Concat(_physicalModel.PrefixColumns)
            .Concat(tableModel.Columns.Where(x => !x.HashKey))
            .Concat(_physicalModel.SufixColumns)
            .ToList();

        int maxNameColumnSize = columns.Max(x => x.Name.Length) + 6;

        list += columns
            .Select((x, i) => Build(x, i == columns.Count - 1, maxNameColumnSize))
            .Func(x => new Instructions() + x);

        list += InstructionType.TabMinus;
        list += ")";

        var hashColumns = hashKeyColumns.Select(x => $"[{x.Name}]").Join(", ").ToNullIfEmpty();
        if (hashColumns != null)
        {
            list += $"WITH (DISTRIBUTION = HASH ({hashColumns}), CLUSTERED COLUMNSTORE INDEX)";
        }
        list += ";";

        return list;
    }

    private Instruction Build(ColumnModel columnModel, bool last, SchemaModel schemaModel)
    {
        return new Instruction
        {
            Type = InstructionType.Code,
            Text = columnModel.Security switch
            {
                Security.Unrestricted => protectField(false, columnModel.Name),
                Security.Restricted => protectField(schemaModel.Security == Security.Unrestricted, columnModel.Name),
                Security.PII => protectField(schemaModel.Security != Security.PII, columnModel.Name),

                _ => throw new InvalidOperationException(),
            } + (last ? string.Empty : ","),
        };

        static string protectField(bool protect, string name) => protect ? formatProtected(name) : formatNormal(name);
        static string formatNormal(string name) => $"x.[{name}]";
        static string formatProtected(string name) => $"HASHBYTE('SHA2_256', x.[{name}]) AS [{name}]";
    }

    private Instruction Build(ColumnDefinitionModel columnDefModel, bool last, int maxColumnSize)
    {
        const int maxDataTypeColumn = 20;

        string column = $"x.[{columnDefModel.Name}]";
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
}
