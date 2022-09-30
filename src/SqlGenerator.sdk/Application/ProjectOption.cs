using Microsoft.Extensions.Logging;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ProjectOption
{
    public string ProjectOptionFile { get; init; } = null!;
    public string? SourceFile { get; init; }
    public string? OptionFile { get; init; }
    public string? NameMapFile { get; init; }
    public string? TableListFile { get; init; }
    public string? BuildFolder { get; init; }
    public string? ClassificationFile { get; init; }
    public UspLoadTableOption? UspLoadTableOption { get; init; }
    public RawToCultivatedOption? RawToCultivated { get; init; }
}


public static class ProjectOptionFile
{
    public static ProjectOption Read(string projectFile) => File.ReadAllText(projectFile)
        .ToObject<ProjectOption>()
        .NotNull()
        .Verify()
        .Func(x => x with
        {
            ProjectOptionFile = projectFile,
            SourceFile = PathTool.ToFullPath(projectFile, x.SourceFile),
            OptionFile = PathTool.ToFullPath(projectFile, x.OptionFile),
            NameMapFile = PathTool.ToFullPath(projectFile, x.NameMapFile),
            TableListFile = PathTool.ToFullPath(projectFile, x.TableListFile),
            ClassificationFile = PathTool.ToFullPath(projectFile, x.ClassificationFile),
        });

    public static ProjectOption Verify(this ProjectOption? subject)
    {
        subject.NotNull();

        return subject;
    }

    public static async Task Write(this ProjectOption projectOption, string file)
    {
        projectOption.NotNull();
        file.NotEmpty();

        string json = projectOption.ToJsonFormat();
        await File.WriteAllTextAsync(file, json);
    }
}
