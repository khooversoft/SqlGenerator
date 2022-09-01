using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml.Wordprocessing;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Excel;

public class ExcelDataAnalysis
{
    public bool? NoData { get; private set; }
    public int? AreaColumnCount { get; private set; }
    public IReadOnlyList<ExcelRow>? DataAreaRows { get; private set; }
    public ExcelRow? TableHeader { get; private set; }
    public IReadOnlyList<ExcelRow>? TableRows { get; private set; }

    public IReadOnlyList<ColumnDefinitionModel>? ColumnDefinitions { get; private set; }

    public ExcelDataAnalysis Run(IEnumerable<ExcelRow> dataRows, string? firstColumnText)
    {
        dataRows.NotNull();
        firstColumnText ??= "loan*";

        Reset();

        IReadOnlyList<ExcelRow> rows = dataRows.ToList();

        RowCount(rows);
        CalculateAreaColumnCount(rows);
        GetDataArea(rows);
        GetTableData(rows, firstColumnText);
        CalculateColumnDefinitions();

        return this;
    }

    private void Reset()
    {
        NoData = null;
        AreaColumnCount = null;
    }

    private void RowCount(IReadOnlyList<ExcelRow> rows) => NoData = rows.Count == 0;

    private void CalculateAreaColumnCount(IReadOnlyList<ExcelRow> rows) => AreaColumnCount = rows
            .Select(x => x.Count())
            .GroupBy(x => x)
            .Select(x => (Index: x.Key, Count: x.Count()))
            .OrderByDescending(x => x.Count)
            .FirstOrDefault().Index;

    private void GetDataArea(IReadOnlyList<ExcelRow> rows) => DataAreaRows = rows
            .Where(x => x.Columns.Count == AreaColumnCount)
            .ToList();

    private void GetTableData(IReadOnlyList<ExcelRow> rows, string? firstColumnText)
    {
        IReadOnlyList<ExcelRow> selectedRows = (DataAreaRows ?? Array.Empty<ExcelRow>())
            .SkipWhile(x => !MatchFirstColumn(x.Columns.First(), firstColumnText))
            .ToList();

        TableHeader = selectedRows.FirstOrDefault();
        TableRows = selectedRows.Skip(1).ToList();
    }

    private void CalculateColumnDefinitions()
    {
        TableHeader.NotNull();
        TableRows.NotNull();

        if (AreaColumnCount == null) return;
        var columnDefinitions = new Sequence<ColumnDefinitionModel>();

        for (int column = 0; column < AreaColumnCount; column++)
        {
            columnDefinitions += new ColumnDefinitionModel
            {
                Name = TableHeader.NotNull().Columns[column],
                Security = Security.Unrestricted,
                DataType = CalculateDataType(TableRows.Select(x => x.Columns[column]).ToList()),
                ColumnIndex = column,
            };
        }

        ColumnDefinitions = columnDefinitions;
    }

    private static bool MatchFirstColumn(string column, string? firstColumnText) => firstColumnText?.Split('*') switch
    {
        null => false,
        string[] v when v.Length == 1 => column.StartsWith(v[0]),
        string[] v when v.Length == 2 && v[1].IsEmpty() => column.StartsWith(v[0], StringComparison.OrdinalIgnoreCase),

        string[] v when v.Length == 2 => column.StartsWith(v[0], StringComparison.OrdinalIgnoreCase) &&
                                        column.EndsWith(v[1], StringComparison.OrdinalIgnoreCase),

        _ => throw new ArgumentException("Invalid firstColumnText"),
    };

    private static string CalculateDataType(IReadOnlyList<string> columnData)
    {
        Func<bool> intType = () => columnData.All(x => int.TryParse(x, out var _));
        Func<bool> longType = () => columnData.All(x => long.TryParse(x, out var _));
        Func<bool> dateTimeType = () => columnData.All(x => DateTime.TryParse(x, out var _));
        Func<bool> decimalType = () => columnData.All(x => decimal.TryParse(x, out var _));
        Func<bool> floatType = () => columnData.All(x => float.TryParse(x, out var _));
        Func<bool> boolType = () => columnData.All(x => bool.TryParse(x, out var _));
        Func<int> maxStringLen = () => columnData.Max(x => x.Length);

        var list = new(Func<bool> isType, Func<string> getText)[]
        {
            (() => intType(), () => "int"),
            (() => dateTimeType(), () => "datetime"),
            (() => decimalType(), () => "decimal(16,6)"),
            (() => floatType(), () => "float"),
            (() => boolType(), () => "nchar(1)"),
            (() => true, () => maxStringLen() switch
            {
                0 => "nchar(1)",
                1 => "nchar(1)",
                int v => $"nvarchar({v})",
            }),
        };

        return list
            .SkipWhile(x => !x.isType())
            .First()
            .getText();
    }
}
