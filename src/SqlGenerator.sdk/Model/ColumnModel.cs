using DataTools.sdk.Model;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ColumnModel
{
    public string Name { get; init; } = null!;
    public Security Security { get; init; }
    public string DataType { get; init; } = null!;
    public bool NotNull { get; init; }
    public bool Private { get; init; }
    public bool PrimaryKey { get; init; }
    public bool NonuniqueIndex { get; init; }
    public int ColumnIndex { get; init; }
    public bool PII { get; init; }
    public bool Restricted { get; init; }
    public string? ShortName { get; init; }

    public bool Equals(ColumnModel? obj)
    {
        return obj is ColumnModel model &&
            Name == model.Name &&
            Security == model.Security &&
            DataType == model.DataType &&
            NotNull == model.NotNull &&
            Private == model.Private &&
            PrimaryKey == model.PrimaryKey &&
            NonuniqueIndex == model.NonuniqueIndex &&
            ColumnIndex == model.ColumnIndex &&
            PII == model.PII &&
            Restricted == model.Restricted &&
            ShortName == model.ShortName;
    }

    public override int GetHashCode() => HashCode.Combine(Name, Security, DataType, NotNull, Private, PrimaryKey, ColumnIndex);
}


public static class ColumnDefinitionExtensions
{
    public static ColumnModel Verify(this ColumnModel subject)
    {
        subject.NotNull();
        subject.Name.NotEmpty();
        subject.Security.AssertValid();
        subject.DataType.NotEmpty();

        return subject;
    }

    public static bool CanShowValue(this ColumnModel subject, Security schemaSecurity)
    {
        return schemaSecurity switch
        {
            Security.Unrestricted when !subject.PII && !subject.Restricted => true,
            Security.Restricted when !subject.PII || subject.Restricted => true,
            Security.PII when subject.PII || !subject.Restricted => true,

            _ => false,
        };
    }
}