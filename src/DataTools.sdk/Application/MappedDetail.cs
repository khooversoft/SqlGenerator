using DataGenerator.Application;
using Toolbox.Data;

namespace DataTools.sdk.Application;

public record MappedDetail
{
    public string TableName { get; init; } = null!;
    public string ColumnName { get; init; } = null!;
    public string MapToName { get; init; } = null!;
}
