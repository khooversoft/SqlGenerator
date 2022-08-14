using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public record ColumnModel
{
    public string ColumnName { get; init; } = null!;
    public Security Security { get; init; }
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