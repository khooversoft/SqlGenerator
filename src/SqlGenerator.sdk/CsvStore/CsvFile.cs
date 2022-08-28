using CsvHelper;
using System.Globalization;
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

    public static void Write<T>(string file, IEnumerable<T> tableInfos)
    {
        var records = tableInfos.ToList();

        using var writer = new StreamWriter(file);
        using var csv = new CsvWriter(writer, CultureInfo.InvariantCulture);

        csv.WriteRecords(records);
    }

    public static CsvTable ReadTable(string file)
    {
        using var reader = new StreamReader(file);
        using CsvReader csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        csv.Read().Assert(x => x == true, $"No header row detected in file {file}");
        csv.ReadHeader();

        IReadOnlyList<string> headers = csv.HeaderRecord
            .NotNull(name: "Headers are empty")
            .ToList();

        var rows = new List<CsvRow>();

        while (csv.Read())
        {
            List<string> rowValues = Enumerable.Range(0, headers.Count)
                .Select(x => tryGet(csv, x)!)
                .Where(x => !x.IsEmpty())
                .ToList();

            rows.Add(new CsvRow { Rows = rowValues });
        }

        return new CsvTable
        {
            Headers = headers,
            Rows = rows,
        };

        static string? tryGet(CsvReader csv, int index)
        {
            bool found = csv.TryGetField<string>(index, out string? field);
            if (!found) return null;

            return field;
        }
    }

    public static void Write(this CsvTable csvTable, string file)
    {
        file.NotEmpty();
        csvTable.NotNull();

        using var writer = new StreamWriter(file);
        using var csv = new CsvWriter(writer, CultureInfo.InvariantCulture);

        var records = csvTable.Rows
            .Select(x => csvTable.CreateRecord(x.Rows))
            .ToList();

        csv.WriteRecords(records);
    }
}
