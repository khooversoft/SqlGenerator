﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataGenerator.Application;

internal record MergeProjectOption
{
    public int MatchRange { get; init; }
    public string TableName { get; init; } = "mergedTable";
    public string? TableListFile { get; init; }
    public string? Delimiter { get; init; }
    public string? MappedFile { get; init; }
    public IReadOnlyList<string> Files { get; init; } = Array.Empty<string>();
}


internal static class MergeProjectOptionFile
{
    public static MergeProjectOption Read(string file) => File.ReadAllText(file)
        .NotNull(name: $"File {file} is empty")
        .ToObject<MergeProjectOption>()
        .NotNull()
        .Func(x => x with
        {
            TableListFile = PathTool.ToFullPath(file, x.TableListFile),
        })
        .NotNull(name: $"File {file} failed to convert");
}
