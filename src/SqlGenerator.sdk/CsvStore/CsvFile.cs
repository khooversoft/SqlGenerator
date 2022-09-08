using CsvHelper;
using CsvHelper.Configuration;
using System.Globalization;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.CsvStore;

public static class CsvFile
{
    public static IReadOnlyList<TableInfo> Read(string file)
    {
        using var reader = new StreamReader(file);
        using CsvReader csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<TableInfoModel>()
            .Select(x => x.ConvertTo())
            .ToList();
    }

    public static StringTable ReadDynamic(string file, string? delimiter)
    {
        var config = new CsvConfiguration(CultureInfo.InvariantCulture)
        {
            PrepareHeaderForMatch = args => args.Header.ToLower(),
            Delimiter = delimiter,
        };

        using var reader = new StreamReader(file);
        using CsvReader csv = new CsvReader(reader, config);

        var data = csv.GetRecords<dynamic>().ToList();
        if( data.Count == 0) return new StringTable();

        // Get header
        StringRow header = ((IDictionary<string, object>)data.First())
            .Select(x => x.Key)
            .Func(x => new StringRow() + x);

        IReadOnlyList<StringRow> rows = data
            .Select(x => (IDictionary<string, object>)x)
            .Select(x => new StringRow() + x.Values.Select(y => y.ToString()))
            .Prepend(header)
            .ToArray();

        return new StringTable(rows, true);
    }

    public static void Write<T>(string file, IEnumerable<T> tableInfos)
    {
        var records = tableInfos.ToList();

        using var writer = new StreamWriter(file);
        using var csv = new CsvWriter(writer, CultureInfo.InvariantCulture);

        csv.WriteRecords(records);
    }

    public static StringTable ReadTable(string file)
    {
        using var reader = new StreamReader(file);
        using CsvReader csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        StringTable table = new StringTable(true);

        csv.Read().Assert(x => x == true, $"No header row detected in file {file}");
        csv.ReadHeader();

        table += csv.HeaderRecord
            .NotNull(name: "Headers are empty")
            .ToList();

        while (csv.Read())
        {
            table += Enumerable.Range(0, table.Header.Count)
                .Select(x => tryGet(csv, x)!)
                .Where(x => !x.IsEmpty())
                .ToList();
        }

        return table;

        static string? tryGet(CsvReader csv, int index)
        {
            bool found = csv.TryGetField<string>(index, out string? field);
            if (!found) return null;

            return field;
        }
    }

    public static void WriteToCsv(this StringTable table, string file)
    {
        file.NotEmpty();
        table.NotNull();
        table.Header.Count.Assert(x => x > 0, "No headers");

        table.Data
            .Select(x => x.Count)
            .All(x => x == table.Header.Count)
            .Assert(x => x == true, "Body does not match header count");

        using var writer = new StreamWriter(file);
        using var csv = new CsvWriter(writer, CultureInfo.InvariantCulture);

        var records = table.Data
            .Select(data => table.Header.Zip(data).Select(x => new KeyValuePair<string, object>(x.First ?? "*", x.Second!)))
            .Select(x => x.ToDynamic())
            .ToList();

        csv.WriteRecords(records);
    }
}
