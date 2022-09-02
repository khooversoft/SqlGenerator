using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;

namespace Toolbox.Data;

public class Sequence<T> : List<T>
{
    public Sequence() { }
    public Sequence(IEnumerable<T> values) : base(values.ToList()) { }

    public override bool Equals(object? obj)
    {
        return obj is Sequence<T> sequence &&
               Count == sequence.Count &&
               this.SequenceEqual(sequence);
    }

    public override int GetHashCode() => base.GetHashCode();

    public static Sequence<T> operator +(Sequence<T> sequence, T value) => sequence.Action(x => x.Add(value));
    public static Sequence<T> operator +(Sequence<T> sequence, IEnumerable<T> values) => sequence.Action(x => x.AddRange(values));

    public static bool operator ==(Sequence<T>? left, Sequence<T>? right) => EqualityComparer<Sequence<T>>.Default.Equals(left, right);
    public static bool operator !=(Sequence<T>? left, Sequence<T>? right) => !(left == right);
}

