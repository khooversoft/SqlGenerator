using Toolbox.Extensions;
using Toolbox.Tools;

namespace Toolbox.Data;

public static class StringTableExtensions
{
    public static IReadOnlyList<StringColumn>? GetColumnsData(this StringTable subject)
    {
        subject.NotNull();

        return subject.FirstRowIsHeader switch
        {
            false => null,
            true => subject.Header
                .Where(x => x != null)
                .OfType<string>()
                .Select((x, i) => new StringColumn(x, GetColumnData(subject, i)))
                .ToArray(),
        };
    }

    public static StringColumn? GetColumnData(this StringTable subject, string columnName, string? mapToName = null)
    {
        subject.NotNull();

        return subject.FirstRowIsHeader switch
        {
            false => null,
            true => FindColumn() switch
            {
                (string ColumnName, int Index) v when !v.ColumnName.IsEmpty() => new StringColumn(mapToName ?? v.ColumnName) + subject.GetColumnData(v.Index),
                _ => null,
            },
        };

        (string ColumnName, int Index)? FindColumn() => subject.Header
            .Select((x, i) => (ColumnName: x ?? string.Empty, Index: i))
            .FirstOrDefault(x => x.ColumnName.Equals(columnName, StringComparison.OrdinalIgnoreCase));
    }

    public static IReadOnlyList<string> GetColumnData(this StringTable subject, int index)
    {
        subject.NotNull();

        index.Assert(x => x >= 0, x => "index < 0");

        return subject.Data
            .Select(x => index < x.Count ? x[index] ?? string.Empty : string.Empty)
            .Reverse()
            .SkipWhile(x => x.IsEmpty())
            .Reverse()
            .ToArray();
    }

    public static StringTable ToTable(this IEnumerable<StringColumn> columns)
    {
        var mergeColumns = columns
            .GroupBy(x => x.ColumnName)
            .Select(x => new StringColumn(x.Key) + x.SelectMany(x => x.ToArray()))
            .ToArray();

        (int Index, StringColumn Column, (int Row, string Data)[] RowData)[] index = mergeColumns
            .Select((x, i) => (Index: i, Column: x, RowData: x.Select((x1, i1) => (Row: i1 + 1, Data: x1 ?? string.Empty)).ToArray()))
            .ToArray();

        (int Column, int Row, string Data)[] pivot = index
            .Select(x => (Column: x.Index, Row: 0, Data: x.Column.ColumnName))
            .Concat(index.SelectMany(x => x.RowData.Select(y => (Column: x.Index, Row: y.Row, Data: y.Data))))
            .ToArray();

        IEnumerable<StringRow> rowGroups = pivot
            .GroupBy(x => x.Row)
            .Select(x => new StringRow() + buildRow(x.ToArray()))
            .ToArray();

        return new StringTable(rowGroups, true);

        static IReadOnlyList<string> buildRow((int Column, int Row, string Data)[] data)
        {
            int maxColumn = data.Max(x => x.Column) + 1;

            var missing = Enumerable
                .Range(0, maxColumn)
                .Except(data.Select(x => x.Column))
                .Select(x => (column: x, data: string.Empty))
                .ToArray();

            var merged = data
                .Select(x => (column: x.Column, data: x.Data))
                .Concat(missing)
                .OrderBy(x => x.column)
                .Select(x => x.data)
                .ToArray();

            return merged;
        }
    }

    public static StringTable ToTable(this IEnumerable<dynamic> data)
    {
        var dataList = data
            .NotNull()
            .ToArray();

        if (dataList.Length == 0) return new StringTable();

        StringRow header = ((IDictionary<string, object>)dataList.First())
            .Select(x => x.Key)
            .Func(x => new StringRow() + x);

        IReadOnlyList<StringRow> rows = dataList
            .Select(x => (IDictionary<string, object>)x)
            .Select(x => new StringRow() + x.Values.Select(y => y.ToString()).OfType<string>())
            .Prepend(header)
            .ToArray();

        return new StringTable(rows, true);
    }
}
