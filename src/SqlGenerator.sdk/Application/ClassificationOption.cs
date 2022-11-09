using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ClassificationRecord
{
    public string ColumnNameMatch { get; init; } = null!;
    public bool PII { get; init; }
    public bool Restricted { get; init; }
}


public static class ClassificationOptionFile
{
    public static ClassificationRecord Verify(this ClassificationRecord subject)
    {
        subject.NotNull();
        subject.ColumnNameMatch.NotEmpty();
        (subject.PII || subject.Restricted).Assert(x => x == true, "PII and/or Restricted is required");

        return subject;
    }

    public static bool IsPII(this SqlProjectOption option, string tableName, string columnName)
    {
        return option.Protection
            .Where(x => x.PII)
            .Any(x => IsMatch(x, tableName, columnName));
    }

    public static bool IsRestricted(this SqlProjectOption option, string tableName, string columnName)
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