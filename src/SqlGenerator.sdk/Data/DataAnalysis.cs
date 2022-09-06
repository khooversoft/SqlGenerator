using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml.Wordprocessing;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Data;

public class DataAnalysis
{
    public AnalysisResult Run(string tableName, IEnumerable<StringRow> dataRows, string? firstColumnText, int? minCharLength)
    {
        tableName.NotEmpty();
        dataRows.NotNull();
        firstColumnText ??= "loan*";

        IReadOnlyList<StringRow> rows = dataRows.ToList();

        bool noData = NoRow(rows);
        int areaColumnCount = CalculateAreaColumnCount(rows);
        IReadOnlyList<StringRow> dataArea = GetDataArea(rows, areaColumnCount);
        StringTable table = GetTableData(rows, firstColumnText);
        IReadOnlyList<TableInfo> TableInfos = CalculateColumnDefinitions(tableName, table, minCharLength ?? 50, areaColumnCount);

        return new AnalysisResult
        {
            NoData = noData,
            AreaColumnCount = areaColumnCount,
            DataAreaRows = dataArea,
            Table = table,
            TableInfos = TableInfos,
        };
    }

    private bool NoRow(IReadOnlyList<StringRow> rows) => rows.Count == 0;

    private int CalculateAreaColumnCount(IReadOnlyList<StringRow> rows) => rows
        .Select(x => x.Count())
        .GroupBy(x => x)
        .Select(x => (Index: x.Key, Count: x.Count()))
        .OrderByDescending(x => x.Count)
        .FirstOrDefault().Index;

    private IReadOnlyList<StringRow> GetDataArea(IReadOnlyList<StringRow> rows, int areaColumnCount) => rows
        .Where(x => x.Count == areaColumnCount)
        .ToList();

    private StringTable GetTableData(IReadOnlyList<StringRow> rows, string firstColumnText)
    {
        var table = new StringTable(true) + rows
            .SkipWhile(x => !MatchFirstColumn(x.First(), firstColumnText))
            .ToList();

        return new StringTable(true)
            + table.Header.Select(x => ConvertToName(x))
            + table.Data;
    }

    private IReadOnlyList<TableInfo> CalculateColumnDefinitions(string tableName, StringTable table, int minCharLength, int areaColumnCount)
    {
        var tableInfos = new Sequence<TableInfo>();
        tableName = ConvertToName(tableName);

        for (int column = 0; column < areaColumnCount; column++)
        {
            tableInfos += new TableInfo
            {
                TableName = tableName,
                ColumnName = table.Header[column],
                DataType = CalculateDataType(table.Data.Select(x => x[column]), minCharLength),
            };
        }

        return tableInfos;
    }

    private static bool MatchFirstColumn(string column, string firstColumnText) => firstColumnText.Split('*') switch
    {
        null => false,
        string[] v when v.Length == 1 => column.StartsWith(v[0]),
        string[] v when v.Length == 2 && v[1].IsEmpty() => column.StartsWith(v[0], StringComparison.OrdinalIgnoreCase),

        string[] v when v.Length == 2 => column.StartsWith(v[0], StringComparison.OrdinalIgnoreCase) &&
                                        column.EndsWith(v[1], StringComparison.OrdinalIgnoreCase),

        _ => throw new ArgumentException("Invalid firstColumnText"),
    };

    private static string CalculateDataType(IEnumerable<string> columnData, int minCharLength)
    {
        Func<bool> intType = () => columnData.All(x => int.TryParse(x, out var _));
        Func<bool> longType = () => columnData.All(x => long.TryParse(x, out var _));
        Func<bool> dateTimeType = () => columnData.All(x => DateTime.TryParse(x, out var _));
        Func<bool> decimalType = () => columnData.All(x => decimal.TryParse(x, out var _));
        Func<bool> floatType = () => columnData.All(x => float.TryParse(x, out var _));
        Func<bool> boolType = () => columnData.All(x => bool.TryParse(x, out var _));
        Func<int> maxStringLen = () => columnData.Max(x => x.Length);

        var list = new (Func<bool> isType, Func<string> getText)[]
        {
            (() => intType(), () => "int"),
            (() => longType(), () => "long"),
            (() => dateTimeType(), () => "datetime"),
            (() => decimalType(), () => "decimal(16,6)"),
            (() => floatType(), () => "float"),
            (() => boolType(), () => "nchar(1)"),
            (() => true, () => maxStringLen() switch
            {
                0 => "nchar(1)",
                1 => "nchar(1)",
                int v => $"nvarchar({Math.Max(v, minCharLength)})",
            }),
        };

        return list
            .SkipWhile(x => !x.isType())
            .First()
            .getText();
    }

    string ConvertToName(string name) => name
        .Select(x => char.IsLetterOrDigit(x) ? x : '_')
        .Func(x => new string(x.ToArray()));
}
