using DataTools.sdk.Model;
using System.Xml.Linq;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record SchemaModel
{
    public string Security { get; init; } = null!;
    public string Name { get; init; } = null!;
    public string? Format { get; init; }
    public int? MaxColumnSize { get; init; }

    public bool Equals(SchemaModel? obj)
    {
        return obj is SchemaModel model &&
            Security == model.Security &&
            Name == model.Name &&
            Format == model.Format &&
            MaxColumnSize == model.MaxColumnSize;
    }

    public override int GetHashCode() => HashCode.Combine(Security, Name, Format, MaxColumnSize);
}


public static class SchemaModelExtensions
{
    public static SchemaModel Verify(this SchemaModel subject)
    {
        subject.NotNull();
        subject.Security.NotEmpty();
        subject.Name.NotEmpty();

        return subject;
    }

    public static bool ForTable(this SchemaModel subject) => subject.NotNull().Security.EqualsIgnoreCase("data");

    public static bool ForView(this SchemaModel subject) => !subject.ForTable();
}