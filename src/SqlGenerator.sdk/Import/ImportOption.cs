using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Import;

public record ImportOption
{
    public SchemaModel[] Schemas { get; init; } = Array.Empty<SchemaModel>();
    public ColumnDefinitionModel[] PrefixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
    public ColumnDefinitionModel[] SufixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
}


public static class ImportOptionExtensions
{
    public static ImportOption Verify(this ImportOption? subject)
    {
        subject.NotNull();
        subject.Schemas.NotNull();
        subject.PrefixColumns.NotNull();
        subject.SufixColumns.NotNull();

        return subject;
    }
}