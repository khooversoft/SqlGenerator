using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace Toolbox.Data;

[DebuggerDisplay("ColumnName={ColumnName}, Count={Count}, Values={this.ToString()}")]
public class StringColumn : Sequence<string>
{
    public StringColumn(string columnName) => ColumnName = columnName.NotEmpty();
    public StringColumn(string columnName, IEnumerable<string> values)
        : base(values.ToList())
    {
        ColumnName = columnName.NotEmpty();
    }

    public string ColumnName { get; }
    public override string ToString() => this.Join(",");

    public override bool Equals(object? obj)
    {
        return obj is StringColumn subject &&
            subject.ColumnName == ColumnName &&
            base.Equals(obj);
    }

    public override int GetHashCode() => HashCode.Combine(ColumnName, base.GetHashCode());

    public static StringColumn operator +(StringColumn sequence, string value) => sequence.Action(x => x.Add(value));
    public static StringColumn operator +(StringColumn sequence, IEnumerable<string> values) => sequence.Action(x => x.AddRange(values));
}

