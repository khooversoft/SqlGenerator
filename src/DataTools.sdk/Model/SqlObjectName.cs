using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataTools.sdk.Model;

public sealed record SqlObjectName
{
    public required string Schema { get; init; } = null!;
    public required string Name { get; init; } = null!;

    public override string ToString() => $"[{Schema}].[{Name}]";
    public string ToSimpleString() => $"{Schema}.{Name}";

    public string CalculateFileName() => $"{Name}.sql";

    public bool Equals(SqlObjectName? obj)
    {
        return obj is SqlObjectName model &&
            Schema.EqualsIgnoreCase(model.Schema) &&
            Name.EqualsIgnoreCase(model.Name);
    }

    public override int GetHashCode() => HashCode.Combine(Schema, Name);

    public static implicit operator string(SqlObjectName objectName) => objectName.ToString();

    public static SqlObjectName Parse(string value) => value.NotEmpty()
        .Replace("[", string.Empty)
        .Replace("]", string.Empty)
        .Split('.', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries) switch
    {
        string[] v when v.Length == 2 => new SqlObjectName { Schema = v[0], Name = v[1] },
        _ => throw new ArgumentException($"Syntax error: {value}"),
    };
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