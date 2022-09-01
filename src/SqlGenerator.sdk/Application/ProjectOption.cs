﻿using Microsoft.Extensions.Logging;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ProjectOption
{
    public string? SourceFile { get; init; }
    public string? OptionFile { get; init; }
    public string? NameMapFile { get; init; }
    public int? ShortNameMaxSize { get; init; }
    public string? TableListFile { get; init; }
    public string? MasterFile { get; init; }
    public string? BuildFolder { get; init; }
    public UspLoadTableOption? UspLoadTableOption { get; init; }
    public RawToCultivatedOption? RawToCultivated { get; init; }
}


public static class ProjectOptionExtensions
{
    public static ProjectOption LogProperties(this ProjectOption subject, ILogger logger)
    {
        subject.NotNull();
        logger.NotNull();

        var dict = subject.GetConfigurationValues();

        string line = dict
            .Select(x => $" {x.Key}={x.Value}")
            .Prepend("Project option properties...")
            .Join(Environment.NewLine);

        logger.LogInformation(line);

        return subject;
    }
}