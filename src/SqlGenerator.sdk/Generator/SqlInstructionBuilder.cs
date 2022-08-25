using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class SqlInstructionBuilder
{
    private readonly PhysicalModel _physicalModel;

    public SqlInstructionBuilder(PhysicalModel model) => _physicalModel = model.Verify();

    public Instructions Build()
    {
        var list = new Instructions();

        list += (InstructionType.PushFolder, "Schema");
        list += _physicalModel.Schemas.Select(x => BuildSchemaModel(x));
        list += InstructionType.PopFolder;

        foreach (var schema in _physicalModel.Schemas)
        {
            list += (InstructionType.PushFolder, schema.Name);

            list += (InstructionType.PushFolder, "Views");
            list += _physicalModel.Views.Where(x => x.Name.Schema == schema.Name).Select(x => BuildViewModel(x));
            list += InstructionType.PopFolder;

            list += (InstructionType.PushFolder, "Tables");
            list += _physicalModel.Tables.Where(x => x.Name.Schema == schema.Name).Select(x => BuildTableModel(x));
            list += InstructionType.PopFolder;

            list += InstructionType.PopFolder;
        }

        return list;
    }

    private Instructions BuildSchemaModel(SchemaModel schema)
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
    private Instructions BuildViewModel(ViewModel viewModel)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, viewModel.Name.CalculateFileName());

        list += $"CREATE VIEW {viewModel.Name}";
        list += "AS";
        list += InstructionType.TabPlus;
        list += "SELECT";
        list += InstructionType.TabPlus;

        var columns = viewModel.Columns.Where(x => x.HashKey)
            .Concat(GetColumns(_physicalModel.PrefixColumns))
            .Concat(viewModel.Columns.Where(x => !x.HashKey))
            .Concat(GetColumns(_physicalModel.SuffixColumns))
            .ToList();

        SchemaModel schemaModel = _physicalModel.GetSchemaModel(viewModel.Name.Schema).NotNull();

        list += columns
            .Select((x, i) => BuildColumnModel(x, i == columns.Count - 1, schemaModel))
            .Func(x => new Instructions() + x);

        list += InstructionType.TabMinus;
        list += $"FROM {viewModel.Table} x";
        list += $"WHERE x.[ASAP_DeleteDateTime] IS NOT NULL";
        list += InstructionType.TabMinus;
        list += ";";

        return list;

        IEnumerable<ColumnModel> GetColumns(IEnumerable<ColumnDefinitionModel> columns) => columns
            .Where(x => !x.Private)
            .Select(x => x.ToColumnModel());
    }

    private Instructions BuildTableModel(TableModel tableModel)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, tableModel.Name.CalculateFileName());

        list += $"CREATE TABLE {tableModel.Name}";
        list += "(";
        list += InstructionType.TabPlus;

        IEnumerable<ColumnDefinitionModel> hashKeyColumns = tableModel.Columns.Where(x => x.HashKey);

        IReadOnlyList <ColumnDefinitionModel> columns = hashKeyColumns
            .Concat(_physicalModel.PrefixColumns)
            .Concat(tableModel.Columns.Where(x => !x.HashKey))
            .Concat(_physicalModel.SuffixColumns)
            .ToList();

        int maxNameColumnSize = columns.Max(x => x.Name.Length) + 6;

        list += columns
            .Select((x, i) => BuildColumnDefinitionModel(x, i == columns.Count - 1, maxNameColumnSize))
            .Func(x => new Instructions() + x);

        list += InstructionType.TabMinus;
        list += ")";


        var hashColumns = tableModel.Columns.Where(x => x.HashKey)
            .Concat(tableModel.Columns.Where(x => x.PrinaryKey))
            .Take(1)
            .Select(x => $"[{x.Name}]")
            .Join(", ");

        if (!hashColumns.IsEmpty())
        {
            list += $"WITH (DISTRIBUTION = HASH ({hashColumns}), CLUSTERED COLUMNSTORE INDEX)";
        }
        list += ";";

        return list;
    }

    private Instruction BuildColumnModel(ColumnModel columnModel, bool last, SchemaModel schemaModel)
    {
        return new Instruction
        {
            Type = InstructionType.Code,
            Text = columnModel.Security switch
            {
                Security.Unrestricted => protectField(false, columnModel.Name),
                Security.Data => throw new ArgumentException("Data security"),

                Security v when v == schemaModel.Security => protectField(false, columnModel.Name),
                _ => protectField(true, columnModel.Name),
            }
            + (last ? string.Empty : ","),
        };

        string protectField(bool protect, string name) => protect ? formatProtected(name) : formatNormal(name);

        string formatNormal(string name) => $"x.[{name}]" + displayAs();
        string formatProtected(string name) => $"HASHBYTE('SHA2_256', x.[{name}])" + displayAs();

        string displayAs() => columnModel.DisplayAs switch
        {
            null => string.Empty,
            string v when v.IsEmpty() => string.Empty,
            string v => $" AS [{v}]",
        };
    }

    private Instruction BuildColumnDefinitionModel(ColumnDefinitionModel columnDefModel, bool last, int maxColumnSize)
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
}
