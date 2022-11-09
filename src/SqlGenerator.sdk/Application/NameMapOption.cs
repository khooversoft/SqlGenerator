using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

//public record NameMapOption
//{
//    public NameMapRecord[] NameMap { get; init; } = Array.Empty<NameMapRecord>();
//}

public record NameMapRecord
{
    public string Long { get; init; } = null!;
    public string Short { get; init; } = null!;
}

public static class NameMapRecordFile
{
    //public static NameMapOption Read(string file) => File.ReadAllText(file)
    //    .NotNull(name: $"File {file} is empty")
    //    .ToObject<NameMapOption>()
    //    .NotNull()
    //    .Verify();

    //public static NameMapOption Verify(this NameMapOption subject)
    //{
    //    subject.NotNull();
    //    subject.NameMap.ForEach(x => x.Verify());

    //    return subject;
    //}

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
    /// <param name="option">name shorting map</param>
    /// <param name="name">column name to short</param>
    /// <param name="maxColumNameSize">max column size, if null no short name is created</param>
    /// <returns>null or short name</returns>
    public static string? ShortName(this SqlProjectOption option, string name, int? maxColumNameSize)
    {
        option.NotNull();

        return maxColumNameSize switch
        {
            null => null,
            int v when name.Length <= v => null,

            int v => option.NameMap
                .Where(x => name.IndexOf(x.Long) >= 0)
                .FirstOrDefault() switch
            {
                null => string.Concat(name.AsSpan(0, v - 1), "_"),

                NameMapRecord r => name.Replace(r.Long, r.Short) switch
                {
                    string v1 when v1.Length <= maxColumNameSize => v1,
                    string v1 => string.Concat(v1.AsSpan(0, v - 1), "_"),
                }
            },
        };
    }
}