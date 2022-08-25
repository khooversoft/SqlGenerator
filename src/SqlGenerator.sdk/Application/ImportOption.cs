using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ImportOption
{
    public IReadOnlyList<SchemaModel> Schemas { get; init; } = Array.Empty<SchemaModel>();
    public IReadOnlyList<ColumnDefinitionModel> PrefixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
    public IReadOnlyList<ColumnDefinitionModel> SufixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
}


public static class ImportOptionBuilder
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