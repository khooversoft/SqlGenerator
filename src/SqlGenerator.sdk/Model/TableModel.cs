using DataTools.sdk.Model;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public enum IndexType
{
    None,
    Hash,
    Cluster,
}

public enum TableMode
{
    None,
    Append,
    Full
}

public sealed record TableModel
{
    public SqlObjectName Name { get; init; } = null!;
    public IndexType IndexType { get; init; } = IndexType.None;
    public TableMode TableMode { get; init; } = TableMode.None;
    public IReadOnlyList<ColumnModel> Columns { get; init; } = Array.Empty<ColumnModel>();

    public bool Equals(TableModel? obj)
    {
        return obj is TableModel model &&
            Name == model.Name &&
            IndexType == model.IndexType &&
            TableMode == model.TableMode &&
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
        subject.TableMode.AssertValid();
        subject.Columns.NotNull().ForEach(x => x.Verify());

        return subject;
    }
}