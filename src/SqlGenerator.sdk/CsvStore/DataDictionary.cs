using CsvHelper;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.CsvStore;

public record DataDictionary
{
    public string File { get; init; } = default!;
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
            .Select(x => x.ConvertTo())
            .Func(x => new DataDictionary
            {
                File = file,
                Items = x.ToList(),
            });
    }

    public static DataDictionary Write(this DataDictionary dataDictionary, string? file = null)
    {
        dataDictionary.Verify();

        var records = dataDictionary.Items
            .Select(x => x.ConvertTo());

        file = (file ?? dataDictionary.File).NotEmpty(name: $"{nameof(file)} not specified");
        CsvFile.Write(file, records);

        return dataDictionary;
    }
}
