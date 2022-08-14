using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public record TableModel
{
    public string SchemaName { get; init; } = null!;
    public string TableName { get; init; } = null!;
    public IReadOnlyList<ColumnDefinition> Columns { get; init; } = Array.Empty<ColumnDefinition>();
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