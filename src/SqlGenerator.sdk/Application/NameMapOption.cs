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
    /// <param name="option"></param>
    /// <param name="name"></param>
    /// <param name="maxColumNameSize"></param>
    /// <returns></returns>
    public static string? ShortName(
            this SqlProjectOption option,
            string name,
            int? maxColumNameSize,
            StringComparison comparisonType = StringComparison.OrdinalIgnoreCase
        ) => ShortName(option.NameMap, name, maxColumNameSize, comparisonType);

    public static string? ShortName(
            this IEnumerable<NameMapRecord> nameMaps,
            string name,
            int? maxColumNameSize,
            StringComparison comparisonType = StringComparison.CurrentCulture
        ) => maxColumNameSize switch
        {
            null => null,
            int size when name.Length <= size => null,
            int size => ShortName(nameMaps, name, comparisonType) switch
            {
                null => null,
                string v => v.Trim(size, "_"),
            }
        };

    public static string? ShortName(this IEnumerable<NameMapRecord> nameMaps, string name, StringComparison comparisonType = StringComparison.CurrentCulture)
    {
        nameMaps.NotNull();

        return nameMaps
            .Select(x => (r: x, find: name.Find(x.Long, comparisonType)))
            .Where(x => x.find != null)
            .FirstOrDefault() switch
        {
            (null, null) => null,

            (NameMapRecord r, string f) => isUpper(f) switch
            {
                true => name.Replace(f, r.Short.ToUpper()),
                false => name.Replace(f, r.Short),
            },

            _ => throw new NotImplementedException()
        };

        bool isUpper(string value) => value switch
        {
            null => false,
            string v => v.All(x => !char.IsLetter(x) || char.IsUpper(x)),
        };
    }
}