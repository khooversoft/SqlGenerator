using CsvHelper;
using CsvHelper.Configuration;
using System.Globalization;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.CsvStore;

public static class CsvFile
{
    public static IReadOnlyList<T> Read<T>(string file)
    {
        using var reader = new StreamReader(file);
        using CsvReader csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<T>().ToArray();
    }

    public static StringTable ReadDynamic(string file, string? delimiter = ",")
    {
        var config = new CsvConfiguration(CultureInfo.InvariantCulture)
        {
            PrepareHeaderForMatch = args => args.Header.ToLower(),
            Delimiter = delimiter,
        };

        using var reader = new StreamReader(file);
        using CsvReader csv = new CsvReader(reader, config);

        var rows = csv.GetRecords<dynamic>()
            .ToArray();
        
        return rows
            .ToTable();
    }

    public static void Write<T>(string file, IEnumerable<T> records)
    {
        records.NotNull();

        using var writer = new StreamWriter(file);
        using var csv = new CsvWriter(writer, CultureInfo.InvariantCulture);

        csv.WriteRecords(records.ToArray());
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
            .All(x => x <= table.Header.Count)
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
