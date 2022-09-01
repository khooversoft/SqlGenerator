using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;

namespace Toolbox.Tools;

public class Sequence<T> : List<T>
{
    public Sequence() { }
    public Sequence(IEnumerable<T> values) : base(values.ToList()) { }

    public override bool Equals(object? obj)
    {
        return obj is Sequence<T> sequence &&
               Count == sequence.Count &&
               Enumerable.SequenceEqual(this, sequence);
    }

    public override int GetHashCode() => base.GetHashCode();

    public static Sequence<T> operator +(Sequence<T> sequence, T value) => sequence.Action(x => x.Add(value));
    public static Sequence<T> operator +(Sequence<T> sequence, IEnumerable<T> values) => sequence.Action(x => x.AddRange(values));
}

