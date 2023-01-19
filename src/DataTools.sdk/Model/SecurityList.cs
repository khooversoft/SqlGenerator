using Toolbox.Extensions;

namespace DataTools.sdk.Model;

public sealed record SecurityList
{
    private readonly IReadOnlyList<string> _list = Array.Empty<string>();

    public SecurityList() => Items = Array.Empty<string>();

    public SecurityList(string? security) => Items = (security ?? string.Empty)
        .Split(";", StringSplitOptions.RemoveEmptyEntries);

    public SecurityList(IEnumerable<string> securityList) => Items = securityList.ToArray();

    public IReadOnlyList<string> Items
    {
        get => _list;

        init => _list = (value ?? Array.Empty<string>())
            .Distinct(StringComparer.OrdinalIgnoreCase)
            .OrderBy(x => x)
            .ToArray();
    }

    public bool Contains(string security) => Items.Contains(security, StringComparer.OrdinalIgnoreCase);

    public bool CanShow(string security) => Items switch
    {
        var v when v.Count == 0 => true,
        _ => Contains(security),
    };

    public bool Equals(SecurityList? obj)
    {
        return obj is SecurityList model &&
            Items.Count == model.Items.Count &&
            Enumerable.SequenceEqual(Items.OrderBy(x => x), model.Items.OrderBy(x => x));
    }
    public override int GetHashCode() => Items.GetHashCode();

    public override string ToString() => Items.Join(";");

    public static explicit operator SecurityList(string securityList) => new SecurityList(securityList);
}
