using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record TableModel
{
    public ObjectName Name { get; init; } = null!;
    public string? HashColumn { get; init; }
    public IReadOnlyList<ColumnDefinitionModel> Columns { get; init; } = Array.Empty<ColumnDefinitionModel>();

    public bool Equals(TableModel? obj)
    {
        return obj is TableModel model &&
            Name == model.Name &&
            HashColumn == model.HashColumn &&
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
        subject.Columns.NotNull().ForEach(x => x.Verify());

        return subject;
    }
}