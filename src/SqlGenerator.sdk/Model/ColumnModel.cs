using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ColumnModel
{
    public string ColumnName { get; init; } = null!;
    public Security Security { get; init; }

    public bool Equals(ColumnModel? obj)
    {
        return obj is ColumnModel model &&
            ColumnName == model.ColumnName &&
            Security == model.Security;
    }

    public override int GetHashCode() => HashCode.Combine(ColumnName, Security);
}


public static class ColumnModelExtensions
{
    public static ColumnModel Verify(this ColumnModel subject)
    {
        subject.NotNull();
        subject.ColumnName.NotEmpty();
        subject.Security.AssertValid();

        return subject;
    }
}