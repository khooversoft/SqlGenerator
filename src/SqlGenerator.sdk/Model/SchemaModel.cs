using System.Xml.Linq;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record SchemaModel
{
    public Security Security { get; init; }
    public string Name { get; init; } = null!;

    public bool Equals(SchemaModel? obj)
    {
        return obj is SchemaModel model &&
            Security == model.Security &&
            Name == model.Name;
    }

    public override int GetHashCode() => HashCode.Combine(Security, Name);
}


public static class SchemaModelExtensions
{
    public static SchemaModel Verify(this SchemaModel subject)
    {
        subject.NotNull();
        subject.Security.AssertValid();
        subject.Name.NotEmpty();

        return subject;
    }
}