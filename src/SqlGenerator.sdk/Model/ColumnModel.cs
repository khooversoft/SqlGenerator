using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ColumnModel
{
    public string Name { get; init; } = null!;
    public Security Security { get; init; }
    public bool HashKey { get; init; }
    public string? DisplayAs { get; init; }

    public bool Equals(ColumnModel? obj)
    {
        return obj is ColumnModel model &&
            Name == model.Name &&
            Security == model.Security &&
            HashKey == model.HashKey &&
            DisplayAs == model.DisplayAs;
    }

    public override int GetHashCode() => HashCode.Combine(Name, Security, DisplayAs);
}


public static class ColumnModelExtensions
{
    public static ColumnModel Verify(this ColumnModel subject)
    {
        subject.NotNull();
        subject.Name.NotEmpty();
        subject.Security.AssertValid();

        return subject;
    }
}