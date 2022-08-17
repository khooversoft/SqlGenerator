using CsvHelper;
using System.Globalization;

namespace SqlGenerator.sdk.Import;

public class ImportCsv
{
    public IReadOnlyList<TableInfo> Read(string file)
    {
        using var reader = new StreamReader(file);
        using var csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<TableInfoRecord>()
            .Select(x => x.ConvertTo())
            .ToList();
    }
}
