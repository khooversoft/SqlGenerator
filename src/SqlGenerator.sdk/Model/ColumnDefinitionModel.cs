using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ColumnDefinitionModel
{
    public string Name { get; init; } = null!;
    public Security Security { get; init; }
    public DataType Type { get; init; }
    public int? Size { get; init; }
    public bool NotNull { get; init; }
    public bool HashKey { get; init; }

    public bool Equals(ColumnDefinitionModel? obj)
    {
        return obj is ColumnDefinitionModel model &&
            Name == model.Name &&
            Security == model.Security &&
            Type == model.Type &&
            Size == model.Size &&
            NotNull == model.NotNull &&
            HashKey == model.HashKey;
    }

    public override int GetHashCode() => HashCode.Combine(Name, Security, Type, Size, NotNull, HashKey);
}


public static class ColumnDefinitionExtensions
{
    public static ColumnDefinitionModel Verify(this ColumnDefinitionModel subject)
    {
        subject.NotNull();
        subject.Name.NotEmpty();
        subject.Security.AssertValid();
        subject.Type.AssertValid();

        return subject;
    }

    public static ColumnModel ToColumnModel(this ColumnDefinitionModel subject) => new ColumnModel { Name = subject.Name, Security = subject.Security };
}