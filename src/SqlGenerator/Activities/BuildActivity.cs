﻿using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Project;
using Toolbox.Tools;

namespace SqlGenerator.Activities;

internal class BuildActivity
{
    private readonly ILogger<BuildActivity> _logger;
    private readonly ProjectBuilder _projectBuilder;

    public BuildActivity(ProjectBuilder projectBuilder, ILogger<BuildActivity> logger)
    {
        _projectBuilder = projectBuilder.NotNull();
        _logger = logger.NotNull();
    }

    public async Task Generate(string projectFile)
    {
        projectFile.NotEmpty().Assert(x => File.Exists(x), x => $"File {x} does not exist");

        _logger.LogInformation("Building project {projectFile}", projectFile);
        SqlProjectOption sqlProjectOption = SqlProjectOptionFile.Read(projectFile);

        Context context = await _projectBuilder.Build(projectFile, sqlProjectOption);

        _logger.LogInformation("Completed");
    }
}
