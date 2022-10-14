using CsvHelper;
using DataTools.sdk.Storage;
using System.Globalization;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataTools.sdk.Model;

public record DataDictionary
{
    public IReadOnlyList<TableInfo> Items { get; init; } = Array.Empty<TableInfo>();
}


public static class DataDictionaryFile
{
    public static DataDictionary Verify(this DataDictionary subject)
    {
        subject.NotNull();
        subject.Items.NotNull();

        return subject;
    }

    public static DataDictionary Read(string file)
    {
        file.NotEmpty();

        using var reader = new StreamReader(file);
        using CsvReader csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<TableInfoModel>()
            .Select((x, i) => x.ConvertTo() with { Ordinal = i + 1 })
            .Func(x => new DataDictionary
            {
                Items = x.ToList(),
            });
    }

    public static DataDictionary Write(this DataDictionary dataDictionary, string file)
    {
        dataDictionary.Verify();
        file.NotEmpty();

        int startOrdinal = dataDictionary.Items.Count + 1;

        var records = dataDictionary.Items
            .Select((x, i) => x.Ordinal > 0 ? x : x with { Ordinal = startOrdinal + i })
            .OrderBy(x => x.TableName)
            .ThenBy(x => x.Ordinal)
            .Select(x => x.ConvertTo());

        CsvFile.Write(file, records);

        return dataDictionary;
    }
}
