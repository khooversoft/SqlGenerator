using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ColumnDefinitionModel
{
    public string Name { get; init; } = null!;
    public Security Security { get; init; }
    public string DataType { get; init; } = null!;
    public bool NotNull { get; init; }
    public bool HashKey { get; init; }
    public bool Private { get; init; }

    public bool Equals(ColumnDefinitionModel? obj)
    {
        return obj is ColumnDefinitionModel model &&
            Name == model.Name &&
            Security == model.Security &&
            DataType == model.DataType &&
            NotNull == model.NotNull &&
            HashKey == model.HashKey &&
            Private == model.Private;
    }

    public override int GetHashCode() => HashCode.Combine(Name, Security, DataType, NotNull, HashKey, Private);
}


public static class ColumnDefinitionExtensions
{
    public static ColumnDefinitionModel Verify(this ColumnDefinitionModel subject)
    {
        subject.NotNull();
        subject.Name.NotEmpty();
        subject.Security.AssertValid();
        subject.DataType.NotEmpty();

        return subject;
    }

    public static ColumnModel ToColumnModel(this ColumnDefinitionModel subject) => new ColumnModel { Name = subject.Name, Security = subject.Security };
}