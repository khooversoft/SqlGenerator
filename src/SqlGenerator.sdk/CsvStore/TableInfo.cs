using SqlGenerator.sdk.Model;
using Toolbox.Tools;

namespace SqlGenerator.sdk.CsvStore;

public record TableInfo
{
    public string TableName { get; init; } = null!;
    public string ColumnName { get; init; } = null!;
    public int Ordinal { get; init; }
    public string DataType { get; init; } = null!;
    public bool NotNull { get; init; }
    public bool PrimaryKey { get; init; }
    public bool Restricted { get; init; }
    public bool PII { get; init; }
}


public static class TableInfoExtensions
{
    public static TableInfoModel ConvertTo(this TableInfo subject)
    {
        return new TableInfoModel
        {
            TableName = subject.TableName,
            ColumnName = subject.ColumnName,
            DataType = subject.DataType,
            NotNull = subject.NotNull ? "NOT NULL" : "NULL",
            PrimaryKey = subject.PrimaryKey ? "Yes" : null,
            Restricted = subject.Restricted ? "Yes" : null,
            PII = subject.PII ? "Yes" : null,
        };
    }

    public static Security GetSecurity(this TableInfo subject) => subject.NotNull() switch
    {
        TableInfo v when v.PII => Security.PII,
        TableInfo v when v.Restricted => Security.Restricted,

        _ => Security.Unrestricted,
    };

    public static (string tableName, string columnName) GetColumnId(this TableInfo subject) =>
        (subject.TableName.ToLower(), subject.ColumnName.ToLower());

    public static string GetColumnKey(this TableInfo subject) =>
        $"{subject.TableName.ToLower()}-{subject.ColumnName.ToLower()}";
}
