using CsvHelper.Configuration.Attributes;
using SqlGenerator.sdk.Model;
using Toolbox.Tools;

namespace SqlGenerator.sdk.CsvStore;

public record TableInfoModel
{
    [Name("Table Name")]
    public string TableName { get; init; } = null!;

    [Name("Column Name")]
    public string ColumnName { get; init; } = null!;

    [Name("Column Datatype")]
    public string DataType { get; init; } = null!;

    [Name("Column Null Option")]
    public string? NotNull { get; init; }

    [Name("Primary Key")]
    public string? PrimaryKey { get; init; }

    [Name("Restricted")]
    public string? Restricted { get; init; }

    [Name("PII")]
    public string? PII { get; init; }

    [Name("HashKey")]
    public string? HashKey { get; init; }

    [Name("ShortName")]
    [Optional]
    public string? ShortName { get; init; }
}

public record TableInfo
{
    public string TableName { get; init; } = null!;
    public string ColumnName { get; init; } = null!;
    public string DataType { get; init; } = null!;
    public bool NotNull { get; init; }
    public bool PrimaryKey { get; init; }
    public bool Restricted { get; init; }
    public bool PII { get; init; }
    public bool HashKey { get; init; }
    public string? ShortName { get; init; }
}


public static class TableInfoExtensions
{
    public static TableInfo ConvertTo(this TableInfoModel subject)
    {
        return new TableInfo
        {
            TableName = subject.TableName,
            ColumnName = subject.ColumnName,
            DataType = subject.DataType,
            NotNull = IsNotNull(subject.NotNull),
            PrimaryKey = IsYes(subject.PrimaryKey),
            Restricted = IsYes(subject.Restricted),
            PII = IsYes(subject.PII),
            HashKey = IsYes(subject.HashKey),
            ShortName = subject.ShortName,
        };

        static bool IsNotNull(string? value) => value?.Equals("not null", StringComparison.OrdinalIgnoreCase) ?? false;
        static bool IsYes(string? value) => value?.Equals("yes", StringComparison.OrdinalIgnoreCase) ?? false;
    }

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
            HashKey = subject.HashKey ? "Yes" : null,
            ShortName = subject.ShortName,
        };
    }

    public static Security GetSecurity(this TableInfo subject) => subject.NotNull() switch
    {
        TableInfo v when v.PII => Security.PII,
        TableInfo v when v.Restricted => Security.Restricted,

        _ => Security.Unrestricted,
    };
}
