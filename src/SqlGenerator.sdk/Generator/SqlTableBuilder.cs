using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;

namespace SqlGenerator.sdk.Generator;

public class SqlTableBuilder
{
    private readonly PhysicalModel _physicalModel;
    public SqlTableBuilder(PhysicalModel model) => _physicalModel = model;

    public Instructions BuildTableModel(TableModel tableModel, BuildType buildType)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, tableModel.Name.CalculateFileName());
        list += SqlInstructionBuilder._headers;

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
        };
}
