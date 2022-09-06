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

    public override string ToString() => $"[{Schema}].[{Name}]";
    public string CalculateFileName() => $"{Name}.sql";

    public bool Equals(ObjectName? obj)
    {
        return obj is ObjectName model &&
            Schema == model.Schema &&
            Name == model.Name;
    }

    public override int GetHashCode() => HashCode.Combine(Schema, Name);

    public static implicit operator string(ObjectName objectName) => objectName.ToString();
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