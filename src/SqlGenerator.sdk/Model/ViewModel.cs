using System.Reflection.Metadata;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record ViewModel
{
    public string SchemaName { get; init; } = null!;
    public string ViewName { get; init; } = null!;
    public IReadOnlyList<ColumnModel> Columns { get; init; } = Array.Empty<ColumnModel>();

    public bool Equals(ViewModel? obj)
    {
        return obj is ViewModel model &&
            SchemaName == model.SchemaName &&
            ViewName == model.ViewName &&
            Columns.Count == model.Columns.Count &&
            Columns.Zip(model.Columns).All(x => x.First == x.Second);
    }

    public override int GetHashCode() => HashCode.Combine(SchemaName, ViewName, Columns);
}


public static class ViewModelExtensions
{
    public static ViewModel Verify(this ViewModel subject)
    {
        subject.NotNull();
        subject.SchemaName.NotEmpty();
        subject.ViewName.NotEmpty();
        subject.Columns.NotNull().ForEach(x => x.Verify());

        return subject;
    }
}