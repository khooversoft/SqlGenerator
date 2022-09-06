using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record NameMapRecord
{
    public string Long { get; init; } = null!;
    public string Short { get; init; } = null!;
}

public static class NameMapRecordFile
{
    public static IReadOnlyList<NameMapRecord> Read(string file) => File.ReadAllText(file)
        .NotNull(name: $"File {file} is empty")
        .ToObject<IReadOnlyList<NameMapRecord>>()
        .NotNull()
        .Action(x => x.ForEach(y => y.Verify()));

    public static NameMapRecord Verify(this NameMapRecord subject)
    {
        subject.NotNull();
        subject.Long.NotEmpty();
        subject.Short.NotEmpty();

        return subject;
    }

    /// <summary>
    /// Lookup shorter name if required
    /// </summary>
    /// <param name="nameMapRecords">name shorting map</param>
    /// <param name="columnName">column name to short</param>
    /// <param name="maxColumNameSize">max column size, if null no short name is created</param>
    /// <returns>null or short name</returns>
    public static string? ShortName(this IReadOnlyList<NameMapRecord> nameMapRecords, string columnName, int? maxColumNameSize)
    {
        nameMapRecords.NotNull();

        return maxColumNameSize switch
        {
            null => null,
            int v when columnName.Length <= v => null,

            int v => nameMapRecords
                .Where(x => columnName.IndexOf(x.Long) >= 0)
                .FirstOrDefault() switch
            {
                null => string.Concat(columnName.AsSpan(0, v - 1), "_"),

                NameMapRecord r => columnName.Replace(r.Long, r.Short) switch
                {
                    string v1 when v1.Length <= maxColumNameSize => v1,
                    string v1 => string.Concat(v1.AsSpan(0, v - 1), "_"),
                }
            },
        };
    }
}