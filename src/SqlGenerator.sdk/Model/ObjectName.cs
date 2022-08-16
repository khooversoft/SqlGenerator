using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ObjectName
{
    public string Schema { get; init; } = null!;
    public string Name { get; init; } = null!;
    public string? NamePrefix { get; init; }

    public override string ToString() => $"[{Schema}].[{GetName()}]";
    public string CalculateFileName() => $"{Schema}_{GetName()}.sql";

    public bool Equals(ObjectName? obj)
    {
        return obj is ObjectName model &&
            Schema == model.Schema &&
            Name == model.Name;
    }

    public override int GetHashCode() => HashCode.Combine(Schema, Name);

    private string GetName() => (NamePrefix ?? string.Empty) + Name;
}


public static class ObjectNameExtensions
{
    public static ObjectName Verify(this ObjectName subject)
    {
        subject.NotNull();
        subject.Schema.NotEmpty();
        subject.Name.NotEmpty();

        return subject;
    }
}