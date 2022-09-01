using SqlGenerator.sdk.CsvStore;
using System.Collections;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Excel;

public class ExcelRow : IEnumerable<string>
{
    public void Add(string value) => Columns.Add(value);
    public IList<string> Columns { get; set; } = new List<string>();

    public override string ToString() => Columns.Join(",");
    public IEnumerator<string> GetEnumerator() => Columns.GetEnumerator();
    IEnumerator IEnumerable.GetEnumerator() => Columns.GetEnumerator();

    public static ExcelRow operator +(ExcelRow sheetRow, string values) => sheetRow.Action(x => x.Columns.Add(values));
    public static implicit operator ExcelRow(List<string> values) => new ExcelRow { Columns = values.ToList() };
}

