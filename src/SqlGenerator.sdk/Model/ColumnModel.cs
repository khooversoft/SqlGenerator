using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ColumnModel
{
    public string Name { get; init; } = null!;
    public Security Security { get; init; }
    public bool HashKey { get; init; }
    public string? DisplayAs { get; init; }
    public string DataType { get; init; } = null!;


    public bool Equals(ColumnModel? obj)
    {
        return obj is ColumnModel model &&
            Name == model.Name &&
            Security == model.Security &&
            HashKey == model.HashKey &&
            DisplayAs == model.DisplayAs &&
            DataType == model.DataType;
    }

    public override int GetHashCode() => HashCode.Combine(Name, Security, DisplayAs, DataType);
}


public static class ColumnModelExtensions
{
    public static ColumnModel Verify(this ColumnModel subject)
    {
        subject.NotNull();
        subject.Name.NotEmpty();
        subject.Security.AssertValid();
        subject.DataType.NotEmpty();

        return subject;
    }
}