using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml.Wordprocessing;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Data;

public class DataAnalysis
{
    private readonly ILogger<DataAnalysis> _logger;
    public DataAnalysis(ILogger<DataAnalysis> logger) => _logger = logger;

    public AnalysisResult Run(string tableName, StringTable table, string? firstColumnText, int? minCharLength)
    {
        tableName.NotEmpty();
        table.NotNull();

        new
        {
            TableName = tableName,
            FirstColumnText = firstColumnText,
            MinCharLength = minCharLength,
        }.LogProperties("Analyzing data...", _logger);

        if (!table.FirstRowIsHeader) table = GetTableData(table, firstColumnText);

        IReadOnlyList<TableInfo> TableInfos = CalculateColumnDefinitions(tableName, table, minCharLength ?? 50);

        return new AnalysisResult
        {
            Table = table,
            TableInfos = TableInfos,
        };
    }

    private StringTable GetTableData(StringTable stringTable, string? firstColumnText)
    {
        stringTable.NotNull();
        firstColumnText ??= "loan*";

        _logger.LogInformation("Getting table and looking for {firstColumnText}", firstColumnText);

        return firstColumnText switch
        {
            null => TrimTableToHeader(stringTable),

            _ => stringTable
                .SkipWhile(x => !PatternMatch.IsMatch(firstColumnText, x.First() ?? String.Empty))
                .Func(x => new StringTable(x, true))
                .Func(x => TrimTableToHeader(x)),
        };
    }

    private StringTable TrimTableToHeader(StringTable stringTable)
    {
        int headerCount = stringTable.Header
            .Select(x => x)
            .Reverse()
            .SkipWhile(x => x.IsEmpty())
            .Count();

        _logger.LogInformation("Header count={count}", headerCount);

        var rows = stringTable
            .Select((x, i) => i switch
            {
                0 => x.Take(headerCount).Select(x => SqlObjectNameTool.ToSafeName(x)),
                _ => x.Take(headerCount),
            })
            .Where(x => x.Count() == headerCount)
            .Select(x => new StringRow(x));

        var table = new StringTable(rows, true);
        _logger.LogInformation("Headers detected: count={count}, {headers}", table.Header.Count, table.Header.Join(", "));

        return table;
    }

    private IReadOnlyList<TableInfo> CalculateColumnDefinitions(string tableName, StringTable table, int minCharLength)
    {
        var tableInfos = new Sequence<TableInfo>();
        tableName = SqlObjectNameTool.ToSafeName(tableName);

        for (int column = 0; column < table.Header.Count; column++)
        {
            tableInfos += new TableInfo
            {
                TableName = tableName,
                ColumnName = table.Header[column].NotEmpty(),
                DataType = CalculateDataType(table.GetColumnData(column), minCharLength),
            };
        }

        return tableInfos;
    }

    private static string CalculateDataType(IEnumerable<string?> columnData, int minCharLength)
    {
        var baseEnum = columnData.Where(x => !x.IsEmpty());

        Func<bool> intType = () => baseEnum.All(x => int.TryParse(x, out var _));
        Func<bool> longType = () => baseEnum.All(x => long.TryParse(x, out var _));
        Func<bool> dateTimeType = () => baseEnum.All(x => DateTime.TryParse(x, out var _));
        Func<bool> decimalType = () => baseEnum.All(x => decimal.TryParse(x, out var _));
        Func<bool> floatType = () => baseEnum.All(x => float.TryParse(x, out var _));
        Func<bool> boolType = () => baseEnum.All(x => bool.TryParse(x, out var _));
        Func<int> maxStringLen = () => baseEnum.Max(x => x?.Length ?? 0);

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
}
