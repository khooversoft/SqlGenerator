using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using Toolbox.Extensions;

namespace SqlGenerator.sdk.Project;

public record Context
{
    public ProjectOption ProjectOption { get; init; } = null!;
    public bool Force { get; init; }
    public string BuildFolder { get; init; } = null!;
    public string ModelFolder { get; init; } = null!;
    public ConfigFile SourceFile { get; init; } = null!;
    public ConfigFile FilterFile { get; init; } = null!;
    public ConfigFile ShortNameFile { get; init; } = null!;
    public ConfigFile ModelFile { get; init; } = null!;
}


public static class ContextExtensions
{
    public static Context LogProperties(this Context context, ILogger logger)
    {
        var line = new[]
        {
            "Build properties...",
            $" ProjectOption={context.ProjectOption}",
            $" Force={context.Force}",
            $" BuildFolder={context.BuildFolder}",
            $" ModelFolder={context.ModelFolder}",
            $" SourceFile={context.SourceFile}",
            $" FilterFile={context.FilterFile}",
            $" ShortNameFile={context.ShortNameFile}",
            $" ModelFile={context.ModelFile}",
        }.Join(Environment.NewLine);
        logger.LogInformation(line);

        return context;
    }
}