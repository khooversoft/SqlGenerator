using System.Reflection.PortableExecutable;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace Toolbox.Data;

public class StringTable : Sequence<StringRow>
{
    public StringTable(bool firstRowIsHeader = false) => FirstRowIsHeader = firstRowIsHeader;

    public StringTable(IEnumerable<StringRow> values, bool firstRowIsHeader = false)
        : base(values.ToList())
    {
        FirstRowIsHeader = firstRowIsHeader;
    }

    public bool FirstRowIsHeader { get; }

    public StringRow Header => FirstRowIsHeader && Count > 0 ? this.First() : throw new ArgumentException("No header row");
    public IReadOnlyList<StringRow> Data => FirstRowIsHeader ? this.Skip(1).ToArray() : this;

    public string? GetValue(string header, StringRow row, bool ignoreCase = false) => GetHeaderIndex(header, true) switch
    {
        null => null,
        int v => row[v],
    };

    public int? GetHeaderIndex(string header, bool ignoreCase = false) => Header
        .Select((x, i) => (index: (int?)i, match: PatternMatch.IsMatch(header, x, ignoreCase)))
        .Where(x => x.match)
        .Select(x => x.index)
        .FirstOrDefault();

    public static StringTable operator +(StringTable sheetRow, IEnumerable<string> values) => sheetRow.Action(x => x.Add(new StringRow(values)));
    public static StringTable operator +(StringTable sheetRow, IEnumerable<StringRow> values) => sheetRow.Action(x => x.AddRange(values));
    public static StringTable operator +(StringTable table, IEnumerable<StringTable> addTables) => table.Action(x => addTables.ForEach(y => x += y));

    public static StringTable operator +(StringTable table, StringTable addTable)
    {
        (int toIndex, string header, int fromIndex)[] map = table.Header
            .Select((x, i) => (toIndex: i, header: x, fromIndex: addTable.Header.FindIndex(y => x == y)))
            .Where(x => x.fromIndex >= 0)
            .ToArray();

        int columnCount = table.Header.Count;

        var data = addTable.Data
            .Select(x => buildRow(columnCount, x, map))
            .ToArray();

        table += data;
        return table;

        StringRow buildRow(int columnCount, StringRow stringRow, (int toIndex, string header, int fromIndex)[] map)
        {
            (int index, string data)[] blanks = Enumerable.Range(0, columnCount)
                .Where(x => !map.Any(y => y.toIndex == x))
                .Select(x => (index: x, data: string.Empty))
                .ToArray();

            var data = map
                .Select(x => (index: x.toIndex, data: x.fromIndex < stringRow.Count ? stringRow[x.fromIndex] : string.Empty))
                .Concat(blanks)
                .OrderBy(x => x.index)
                .Select(x => x.data)
                .ToArray();

            return new StringRow() + data;
        }
    }
}

