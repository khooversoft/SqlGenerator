﻿using CsvHelper.Configuration.Attributes;
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
    [Optional]
    public string? Restricted { get; init; }

    [Name("PII")]
    [Optional]
    public string? PII { get; init; }

    [Name("HashKey")]
    [Optional]
    public string? HashKey { get; init; }

    [Name("ShortName")]
    [Optional]
    public string? ShortName { get; init; }
}


public static class TableInfoModelExtensions
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
}

