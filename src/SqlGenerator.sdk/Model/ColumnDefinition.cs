using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public record ColumnDefinition
{
    public string ColumnName { get; init; } = null!;
    public Security Security { get; init; }
    public DataType Type { get; init; }
    public int? Size { get; init; }
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