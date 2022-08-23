using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record NameMapRecord
{
    public string Long { get; init; } = null!;
    public string Short { get; init; } = null!;
}


public static class NameMapRecordExtensions
{
    public static NameMapRecord Verify(this NameMapRecord subject)
    {
        subject.NotNull();
        subject.Long.NotEmpty();
        subject.Short.NotEmpty();

        return subject;
    }

    public static string? ShortName(this IEnumerable<NameMapRecord> nameMapRecords, string columnName, int maxColumnNameSize)
    {
        nameMapRecords.NotNull();

        return maxColumnNameSize switch
        {
            int v when columnName.Length <= v => null,

            int v => nameMapRecords
                        .Where(x => columnName.IndexOf(x.Long) >= 0)
                        .FirstOrDefault() switch
            {
                null => string.Concat(columnName.AsSpan(0, v - 1), "_"),
                NameMapRecord r => columnName.Replace(r.Long, r.Short) switch
                {
                    string v1 when v1.Length <= maxColumnNameSize => v1,
                    string v1 => string.Concat(v1.AsSpan(0, v - 1), "_"),
                }
            },
        };
    }
}