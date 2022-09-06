using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public enum IndexType
{
    None,
    Hash,
    Cluster,
}

public sealed record TableModel
{
    public ObjectName Name { get; init; } = null!;
    public IndexType IndexType { get; init; } = IndexType.None;
    public IReadOnlyList<ColumnModel> Columns { get; init; } = Array.Empty<ColumnModel>();

    public bool Equals(TableModel? obj)
    {
        return obj is TableModel model &&
            Name == model.Name &&
            IndexType == model.IndexType &&
            Columns.Count == model.Columns.Count &&
            Columns.Zip(model.Columns).All(x => x.First == x.Second);
    }

    public override int GetHashCode() => HashCode.Combine(Name, Columns);
}


public static class TableModelExtensions
{
    public static TableModel Verify(this TableModel subject)
    {
        subject.NotNull();
        subject.Name.Verify();
        subject.IndexType.AssertValid();
        subject.Columns.NotNull().ForEach(x => x.Verify());

        return subject;
    }
}