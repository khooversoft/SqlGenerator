using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace Toolbox.Data;

[DebuggerDisplay("Count={Count}, Values={this.ToString()}")]
public class StringRow : Sequence<string>
{
    public StringRow() { }
    public StringRow(IEnumerable<string> values) : base(values.ToList()) { }

    public override string ToString() => this.Join(",");

    public static StringRow operator +(StringRow sequence, string value) => sequence.Action(x => x.Add(value));
    public static StringRow operator +(StringRow sheetRow, IEnumerable<string> values) => sheetRow.Action(x => x.AddRange(values));
}

