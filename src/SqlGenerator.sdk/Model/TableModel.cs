using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record TableModel
{
    public string SchemaName { get; init; } = null!;
    public string TableName { get; init; } = null!;
    public IReadOnlyList<ColumnDefinition> Columns { get; init; } = Array.Empty<ColumnDefinition>();

    public bool Equals(TableModel? obj)
    {
        return obj is TableModel model &&
            SchemaName == model.SchemaName &&
            TableName == model.TableName &&
            Columns.Count == model.Columns.Count &&
            Columns.Zip(model.Columns).All(x => x.First == x.Second);
    }

    public override int GetHashCode() => HashCode.Combine(SchemaName, TableName, Columns);
}


public static class TableModelExtensions
{
    public static TableModel Verify(this TableModel subject)
    {
        subject.NotNull();
        subject.SchemaName.NotEmpty();
        subject.TableName.NotEmpty();
        subject.Columns.NotNull().ForEach(x => x.Verify());

        return subject;
    }
}