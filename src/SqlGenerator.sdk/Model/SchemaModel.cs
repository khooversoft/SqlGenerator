using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public record SchemaModel
{
    public Security Security { get; init; }
    public string SchemaName { get; init; } = null!;
}


public static class SchemaModelExtensions
{
    public static SchemaModel Verify(this SchemaModel subject)
    {
        subject.NotNull();
        subject.Security.AssertValid();
        subject.SchemaName.NotEmpty();

        return subject;
    }
}