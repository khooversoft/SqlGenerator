using Microsoft.Extensions.Logging;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public static class ProjectOptionBuilder
{
    public static ProjectOption Read(string projectFile) => File.ReadAllText(projectFile)
        .ToObject<ProjectOption>()
        .NotNull()
        .Func(x => x = x with { ProjectFile = projectFile })
        .Verify()
        .Func(x => x with
        {
            SourceFile = x.ToFullPath(x.SourceFile),
            OptionFile = x.ToFullPath(x.OptionFile),
            NameMapFile = x.ToFullPath(x.NameMapFile),
            TableListFile = x.ToFullPath(x.TableListFile),
            MasterFile = x.ToFullPath(x.MasterFile),
        })
        .Verify();

    public static ProjectOption Verify(this ProjectOption? subject)
    {
        subject.NotNull();
        subject.ProjectFile.NotEmpty();

        return subject;
    }

    public static string GetProjectFolder(this ProjectOption projectOption) => Path.GetDirectoryName(projectOption.ProjectFile).NotEmpty();

    private static string? ToFullPath(this ProjectOption projectOption, string? file) => file switch
    {
        null => null,
        _ => Path.Combine(projectOption.GetProjectFolder(), file)
    };
}