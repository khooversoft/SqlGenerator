﻿using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record SchemaOption
{
    public IReadOnlyList<SchemaModel> Schemas { get; init; } = Array.Empty<SchemaModel>();
    public IReadOnlyList<ColumnModel> PrefixColumns { get; init; } = Array.Empty<ColumnModel>();
    public IReadOnlyList<ColumnModel> SufixColumns { get; init; } = Array.Empty<ColumnModel>();
}


public static class ImportOptionBuilder
{
    public static SchemaOption Verify(this SchemaOption? subject)
    {
        subject.NotNull();
        subject.Schemas.NotNull();
        subject.PrefixColumns.NotNull();
        subject.SufixColumns.NotNull();

        return subject;
    }
}