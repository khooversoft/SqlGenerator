using System.Reflection.PortableExecutable;
using Toolbox.Extensions;

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
