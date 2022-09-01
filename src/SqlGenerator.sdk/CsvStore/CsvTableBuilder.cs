using Toolbox.Extensions;

namespace SqlGenerator.sdk.CsvStore;

public class CsvTableBuilder
{

    public ListX<string> Headers { get; set; } = new ListX<string>();
    public ListX<CsvRow> Rows { get; set; } = new ListX<CsvRow>();

    public class ListX<T> : List<T>
    {
        public static List<T> operator +(ListX<T> list, T value) => list.Action(x => list.Add(value));
    }
}
