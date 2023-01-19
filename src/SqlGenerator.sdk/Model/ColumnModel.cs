using DataTools.sdk.Model;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ColumnModel
{
    public string Name { get; init; } = null!;
    public string DataType { get; init; } = null!;
    public bool NotNull { get; init; }
    public bool Private { get; init; }
    public bool PrimaryKey { get; init; }
    public int ColumnIndex { get; init; }
    public SecurityList Security { get; init; } = null!;


    public bool Equals(ColumnModel? obj)
    {
        return obj is ColumnModel model &&
            Name == model.Name &&
            Security == model.Security &&
            DataType == model.DataType &&
            NotNull == model.NotNull &&
            Private == model.Private &&
            PrimaryKey == model.PrimaryKey &&
            ColumnIndex == model.ColumnIndex;
    }

    public override int GetHashCode() => HashCode.Combine(Name, Security, DataType, NotNull, Private, PrimaryKey, ColumnIndex);
}


public static class ColumnDefinitionExtensions
{
    public static ColumnModel Verify(this ColumnModel subject)
    {
        subject.NotNull();
        subject.Name.NotEmpty();
        subject.DataType.NotEmpty();

        return subject;
    }
}
