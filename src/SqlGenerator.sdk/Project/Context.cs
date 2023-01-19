using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using System.Collections.Concurrent;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public record Context
{
    public string ProjectFile { get; init; } = null!;
    public SqlProjectOption ProjectOption { get; init; } = null!;
    public string BuildFolder { get; init; } = null!;
    public string ModelFolder { get; init; } = null!;
    public ConfigFile SourceFile { get; init; } = null!;
    public ConfigFile ModelFile { get; init; } = null!;
}


public static class ContextExtensions
{
    private const string _modelExtension = ".model.json";

    public static Context CreateContext(this SqlProjectOption projectOption, string projectFile, ConfigFile sourceFile)
    {
        projectOption.NotNull();
        projectFile.NotEmpty();
        sourceFile.NotNull();

        string folder = projectOption.BuildFolder switch
        {
            null => Path.GetDirectoryName(projectOption.ProjectOptionFile).NotNull(),

            string v => Path.IsPathFullyQualified(v) switch
            {
                true => v,
                false => Path.Combine(Path.GetDirectoryName(projectOption.ProjectOptionFile).NotEmpty(), v),
            },
        };

        string buildFolder = Path.Combine(folder, "build");
        string modelFolder = Path.Combine(folder, "model");

        var buildTemplate = Path.Combine(buildFolder, Path.GetFileName(sourceFile));
        var modelTemplate = Path.Combine(modelFolder, Path.GetFileName(sourceFile));

        return new Context
        {
            ProjectFile = projectFile,
            ProjectOption = projectOption,
            SourceFile = sourceFile,

            BuildFolder = buildFolder,
            ModelFolder = modelFolder,

            ModelFile = new ConfigFile(buildTemplate, _modelExtension),
        };
    }
}