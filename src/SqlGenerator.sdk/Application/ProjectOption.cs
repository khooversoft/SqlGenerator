using Microsoft.Extensions.Logging;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ProjectOption
{
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
            SourceFile = ToFullPath(projectFile, x.SourceFile),
            OptionFile = ToFullPath(projectFile, x.OptionFile),
            NameMapFile = ToFullPath(projectFile, x.NameMapFile),
            TableListFile = ToFullPath(projectFile, x.TableListFile),
            ClassificationFile = ToFullPath(projectFile, x.ClassificationFile),
        })
        .Verify();

    public static ProjectOption Verify(this ProjectOption? subject)
    {
        subject.NotNull();

        return subject;
    }

    private static string? ToFullPath(string projectFile, string? file) => file switch
    {
        null => null,
        _ => Path.Combine(Path.GetDirectoryName(projectFile).NotEmpty(), file)
    };
}
