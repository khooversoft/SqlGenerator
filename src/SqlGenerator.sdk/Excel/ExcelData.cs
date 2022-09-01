using SqlGenerator.sdk.CsvStore;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Excel;

[DebuggerDisplay("Rows={Rows}")]
public class ExcelData : IEnumerable<ExcelRow>
{
    public void Add(ExcelRow value) => Rows.Add(value);

    public IList<ExcelRow> Rows { get; set; } = new List<ExcelRow>();

    public IEnumerator<ExcelRow> GetEnumerator() => Rows.GetEnumerator();
    IEnumerator IEnumerable.GetEnumerator() => ((IEnumerable)Rows).GetEnumerator();

    public static ExcelData operator +(ExcelData sheetRow, ExcelRow row) => sheetRow.Action(x => x.Rows.Add(row));
    public static ExcelData operator +(ExcelData sheetRow, List<string> values) => sheetRow.Action(x => x.Rows.Add(values));
}

