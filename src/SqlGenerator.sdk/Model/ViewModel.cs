using System.Reflection.Metadata;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ViewModel
{
    public ObjectName Name { get; init; } = null!;
    public ObjectName Table { get; init; } = null!;
    public IReadOnlyList<ColumnModel> Columns { get; init; } = Array.Empty<ColumnModel>();

    public bool Equals(ViewModel? obj)
    {
        return obj is ViewModel model &&
            Name == model.Name &&
            Table == model.Table &&
            Columns.Count == model.Columns.Count &&
            Columns.Zip(model.Columns).All(x => x.First == x.Second);
    }

    public override int GetHashCode() => HashCode.Combine(Name, Table, Columns);
}


public static class ViewModelExtensions
{
    public static ViewModel Verify(this ViewModel subject)
    {
        subject.NotNull();
        subject.Name.Verify();
        subject.Table.Verify();
        subject.Columns.NotNull().ForEach(x => x.Verify());

        return subject;
    }
}