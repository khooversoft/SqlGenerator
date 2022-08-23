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

    public static void Write(string file, IEnumerable<TableInfoModel> tableInfos)
    {
        var records = tableInfos.ToList();

        using var writer = new StreamWriter(file);
        using var csv = new CsvWriter(writer, CultureInfo.InvariantCulture);

        csv.WriteRecords(records);
    }
}
