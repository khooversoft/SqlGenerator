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

    public static StringTable operator +(StringTable sheetRow, IEnumerable<string?> values) => sheetRow.Action(x => x.Add(new StringRow(values)));
    public static StringTable operator +(StringTable sheetRow, IEnumerable<StringRow> values) => sheetRow.Action(x => x.AddRange(values));
}


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

    public static StringColumn? GetColumnData(this StringTable subject, string columnName)
    {
        subject.NotNull();

        return subject.FirstRowIsHeader switch
        {
            false => null,
            true => FindColumn() switch
            {
                (string ColumnName, int Index) v when !v.ColumnName.IsEmpty() => new StringColumn(v.ColumnName) + subject.GetColumnData(v.Index),
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
            .Select(x => new StringRow() + x.OrderBy(y => y.Column).Select(y => y.Data));

        return new StringTable(rowGroups, true);
    }
}
