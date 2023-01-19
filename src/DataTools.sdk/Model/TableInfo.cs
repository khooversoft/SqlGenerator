using DataTools.sdk.Application;
using Toolbox.Data;
using Toolbox.Extensions;

namespace DataTools.sdk.Model;

public record TableInfo
{
    public string TableName { get; init; } = null!;
    public string ColumnName { get; init; } = null!;
    public int Ordinal { get; init; }
    public string DataType { get; init; } = null!;
    public bool NotNull { get; init; }
    public bool PrimaryKey { get; init; }
    public SecurityList Security { get; init; } = null!;
}


public static class TableInfoExtensions
{
    public static IReadOnlyList<TableInfo> ConvertToTableInfo(this StringTable stringTable)
    {
        var rows = stringTable.Data
            .Select(row => new TableInfo
            {
                TableName = get(Constants.ColumnIndex[ColumnIndex.TableName], row),
                ColumnName = get(Constants.ColumnIndex[ColumnIndex.ColumnName], row),
                DataType = get(Constants.ColumnIndex[ColumnIndex.DataType], row),
                NotNull = get(Constants.ColumnIndex[ColumnIndex.NullOption], row).ToLower() switch
                {
                    "null" => false,
                    "not null" => true,
                    string v => throw new ArgumentException($"Unknown data type {v}"),
                },
                PrimaryKey = isYes(get(Constants.ColumnIndex[ColumnIndex.PrimaryKey], row)),
                Security = stringTable.Header
                    .Except(Constants.ColumnIndex.List().Select(x => x.LabelColumnName), StringComparer.OrdinalIgnoreCase)
                    .Select(x => (columnName: x, value: stringTable.GetValue(x, row, true)))
                    .Where(x => isYes(x.value))
                    .Select(x => x.columnName)
                    .Func(x => new SecurityList(x)),
            })
            .ToArray();

        return rows;

        string get(string columName, StringRow row) => stringTable.GetValue(columName, row, true) switch
        {
            null => throw new ArgumentException($"Cannot find required column {columName}"),
            string v => v,
        };

        bool isYes(string? value) => value switch
        {
            null => false,
            string v => v.Equals("yes", StringComparison.OrdinalIgnoreCase),
        };
    }

    public static (string tableName, string columnName) GetColumnId(this TableInfo subject) =>
        (subject.TableName.ToLower(), subject.ColumnName.ToLower());

    public static string GetColumnKey(this TableInfo subject) =>
        $"{subject.TableName.ToLower()}-{subject.ColumnName.ToLower()}";
}
