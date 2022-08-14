using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ColumnDefinition
{
    public string ColumnName { get; init; } = null!;
    public Security Security { get; init; }
    public DataType Type { get; init; }
    public int? Size { get; init; }

    public bool Equals(ColumnDefinition? obj)
    {
        return obj is ColumnDefinition model &&
            ColumnName == model.ColumnName &&
            Security == model.Security &&
            Type == model.Type &&
            Size == model.Size;
    }

    public override int GetHashCode() => HashCode.Combine(ColumnName, Security);
}


public static class ColumnDefinitionExtensions
{
    public static ColumnDefinition Verify(this ColumnDefinition subject)
    {
        subject.NotNull();
        subject.ColumnName.NotEmpty();
        subject.Security.AssertValid();
        subject.Type.AssertValid();

        return subject;
    }
}