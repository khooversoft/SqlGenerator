using SqlGenerator.sdk.Model;

namespace SqlGenerator.sdk.Application;

public record ImportOptionModel
{
    public SchemaModel[] Schemas { get; init; } = Array.Empty<SchemaModel>();
    public ColumnDefinitionModel[] PrefixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
    public ColumnDefinitionModel[] SufixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
}
