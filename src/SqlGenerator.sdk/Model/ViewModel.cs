using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public record ViewModel
{
    public string SchemaName { get; init; } = null!;
    public string ViewName { get; init; } = null!;
    public IReadOnlyList<ColumnModel> Columns { get; init; } = Array.Empty<ColumnModel>();
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