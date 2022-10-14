using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataTools.sdk.Model;

public sealed record SqlObjectName
{
    public string Schema { get; init; } = null!;
    public string Name { get; init; } = null!;

    public override string ToString() => $"[{Schema}].[{Name}]";
    public string CalculateFileName() => $"{Name}.sql";

    public bool Equals(SqlObjectName? obj)
    {
        return obj is SqlObjectName model &&
            Schema == model.Schema &&
            Name == model.Name;
    }

    public override int GetHashCode() => HashCode.Combine(Schema, Name);

    public static implicit operator string(SqlObjectName objectName) => objectName.ToString();
}


public static class SqlObjectNameTool
{
    public static SqlObjectName Verify(this SqlObjectName subject)
    {
        subject.NotNull();
        subject.Schema.NotEmpty();
        subject.Name.NotEmpty();

        return subject;
    }

    public static string ToSafeName(string? name) => (name ?? string.Empty)
        .Select(x => char.IsLetterOrDigit(x) ? x : '_')
        .Func(x => new string(x.ToArray()))
        .Func(x => x.Split('_', StringSplitOptions.RemoveEmptyEntries).Join("_"));
}