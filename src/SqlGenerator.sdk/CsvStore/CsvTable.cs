using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;

namespace SqlGenerator.sdk.CsvStore;

public record CsvTable
{
    public IReadOnlyList<string> Headers { get; init; } = Array.Empty<string>();
    public IReadOnlyList<CsvRow> Rows { get; init; } = Array.Empty<CsvRow>();
}


public record CsvRow
{
    public IReadOnlyList<string> Rows { get; init; } = Array.Empty<string>();
}


public static class CsvTableExtensions
{
    public static dynamic CreateRecord(this CsvTable csvTable, IEnumerable<string> values)
    {
        List<string> list = values.ToList();
        dynamic record = new ExpandoObject();

        Dictionary<string, object> dict = csvTable.Headers
            .Select((x, i) => (Name: x, Value: list[i]))
            .ToDictionary(x => x.Name, x => (object)x.Value!);

        foreach (var item in dict)
        {
            ((ICollection<KeyValuePair<string, object>>)record).Add(item);
        }

        return record;
    }
}
