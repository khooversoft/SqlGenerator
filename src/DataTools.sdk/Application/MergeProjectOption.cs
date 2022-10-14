using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataGenerator.Application;

public record MergeProjectOption
{
    public int MatchRange { get; init; }
    public string TableName { get; init; } = "mergedTable";
    public string? Delimiter { get; init; }
    public string MappedFile { get; init; } = null!;
    public IReadOnlyList<string> Files { get; init; } = Array.Empty<string>();
}


public static class MergeProjectOptionFile
{
    public static MergeProjectOption Verify(this MergeProjectOption? subject)
    {
        subject.NotNull();
        subject.TableName.NotEmpty();
        subject.MappedFile.NotEmpty();

        return subject;
    }

    public static MergeProjectOption Read(string file) => File.ReadAllText(file)
        .NotNull(name: $"File {file} is empty")
        .ToObject<MergeProjectOption>()
        .Verify()
        .Func(x => x with
        {
            MappedFile = PathTool.ToFullPath(file, x.MappedFile).NotEmpty(),
        })
        .NotNull(name: $"File {file} failed to convert");
}
