using System.Diagnostics.CodeAnalysis;

namespace Toolbox.Data;

public class FuzzyMatch : IEqualityComparer<string>
{
    private readonly int _matchRange;
    public FuzzyMatch(int matchRange) => _matchRange = matchRange;

    public bool Equals(string? x, string? y)
    {
        if (x == y) return true;

        return _matchRange switch
        {
            0 => x == y,
            1 => x?.IndexOf(y ?? string.Empty) >= 0 || y?.IndexOf(x ?? String.Empty) >= 0,

            _ => throw new NotSupportedException(),
        };
    }

    public int GetHashCode([DisallowNull] string obj) => string.GetHashCode(obj);
}