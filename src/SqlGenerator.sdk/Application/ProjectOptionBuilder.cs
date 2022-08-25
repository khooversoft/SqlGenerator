using Microsoft.Extensions.Logging;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public static class ProjectOptionBuilder
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
            MasterFile = ToFullPath(projectFile, x.MasterFile),
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