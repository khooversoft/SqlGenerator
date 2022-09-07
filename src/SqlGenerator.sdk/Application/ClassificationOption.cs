using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ClassificationOption
{
    public IReadOnlyList<ClassificationRecord> Protection { get; init; } = Array.Empty<ClassificationRecord>();
}

public record ClassificationRecord
{
    public string ColumnNameMatch { get; init; } = null!;
    public bool PII { get; init; }
    public bool Restricted { get; init; }
}


public static class ClassificationOptionFile
{
    public static ClassificationOption Verify(this ClassificationOption subject)
    {
        subject.NotNull();
        subject.Protection.NotNull();

        return subject;
    }

    public static async Task<ClassificationOption> ReadAsync(string file) => (await File.ReadAllTextAsync(file.NotEmpty()))
        .NotNull(name: $"File {file} is empty")
        .ToObject<ClassificationOption>()
        .NotNull(name: $"File {file} did not deserialize");

    public static Task WriteAsync(this ClassificationOption option, string file) => File.WriteAllTextAsync(file.NotEmpty(), option.NotNull().ToJsonFormat());

    public static bool IsPII(this ClassificationOption option, string tableName, string columnName)
    {
        return option.Protection
            .Where(x => x.PII)
            .Any(x => IsMatch(x, tableName, columnName));
    }

    public static bool IsRestricted(this ClassificationOption option, string tableName, string columnName)
    {
        return option.Protection
            .Where(x => x.Restricted)
            .Any(x => IsMatch(x, tableName, columnName));
    }

    private static bool IsMatch(this ClassificationRecord record, string tableName, string columnName)
    {
        tableName.NotNull();
        columnName.NotNull();

        string fqColumnName = (tableName.ToNullIfEmpty() ?? String.Empty) + "." + (columnName.ToNullIfEmpty() ?? String.Empty);

        return record.ColumnNameMatch
            .Split(';')
            .Any(x => PatternMatch.IsMatch(x, fqColumnName));
    }
}