using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Project;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;

namespace SqlGenerator.sdk.Application;

public record ProjectOption
{
    public string ProjectFile { get; init; } = null!;
    public string? SourceFile { get; init; }
    public string? OptionFile { get; init; }
    public string? NameMapFile { get; init; }
    public int? ShortNameMaxSize { get; init; }
    public string? TableListFile { get; init; }
    public string? MasterFile { get; init; }
    public string? BuildFolder { get; init; }
}


public static class ProjectOptionExtensions
{
    public static ProjectOption LogProperties(this ProjectOption subject, ILogger logger)
    {
        var line = new[]
        {
            "Project option properties...",
            $" ProjectFile={subject.ProjectFile}",
            $" SourceFile={subject.SourceFile}",
            $" OptionFile={subject.OptionFile}",
            $" NameMapFile={subject.NameMapFile}",
            $" ShortNameMaxSize={subject.ShortNameMaxSize}",
            $" TableListFile={subject.TableListFile}",
            $" MasterFile={subject.MasterFile}",
            $" BuildFolder={subject.BuildFolder}",
        }.Join(Environment.NewLine);
        logger.LogInformation(line);

        return subject;
    }
}
