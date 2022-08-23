using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SqlGenerator.Activities;
using SqlGenerator.sdk.Application;
using System.CommandLine;
using Toolbox.Tools;

namespace SqlGenerator.Commands;

internal class ProjectCommand : Command
{
    private readonly ILogger<ProjectCommand> _logger;

    public ProjectCommand(IServiceProvider serviceProvider, ILogger<ProjectCommand> logger)
        : base("project", "Create or update project file for generating SQL code")
    {
        serviceProvider.NotNull();
        _logger = logger.NotNull();

        AddCommand(SetOptions(serviceProvider));
        AddCommand(Filter(serviceProvider));
        AddCommand(ShortNameOptions(serviceProvider));
        AddCommand(DisplayOption(serviceProvider));
    }

    private Command SetOptions(IServiceProvider serviceProvider)
    {
        Argument<string> projectFile = new ("projectFile", "Project file to read or create (extension is *.project.json");

        Option<string> sourceFile = new("--sourceFile", "Source csv file with table and column data");
        Option<string> optionFile = new("--optionFile", "Processing options json file");
        Option<string> masterFile = new("--masterFile", "Name of master file to create from source");
        Option<string> buildFolder = new("--buildFolder", "Folder path build folder for generating SQL scripts (default 'model' in same folder as project file)");

        var command = new Command("set", "Set project details")
        {
            projectFile,
            sourceFile,
            optionFile,
            masterFile,
            buildFolder,
        };

        command.SetHandler(async (string projectFile, string? sourceFile, string? optionFile, string? masterFile, string? buildFolder) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .Create(projectFile, sourceFile: sourceFile, optionFile: optionFile, masterFile: masterFile, buildFolder: buildFolder);
        }, projectFile, sourceFile, optionFile, masterFile, buildFolder);

        return command;
    }

    private Command Filter(IServiceProvider serviceProvider)
    {
        Argument<string> projectFile = new ("projectFile", "Project file to read or create (extension is *.project.json");
        Argument<string> tableListFile = new ("tableListFile", "File that list tables be included");

        var command = new Command("filter", "Set project details")
        {
            projectFile,
            tableListFile
        };

        command.SetHandler(async (string projectFile, string tableListFile) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .Create(projectFile, tableListFile: tableListFile);
        }, projectFile, tableListFile);

        return command;
    }

    private Command ShortNameOptions(IServiceProvider serviceProvider)
    {
        Argument<string> projectFile = new ("projectFile", "Project file to read or create (extension is *.project.json");
        Argument<string> nameMapFile = new("nameMapFile", "File to the long to short dictionary, used to create short names");
        Argument<int> shortMaxSize = new("shortMaxSize", "Max column name size for short name.");

        var command = new Command("shortName", "Set details to generate short names")
        {
            projectFile,
            nameMapFile,
            shortMaxSize
        };

        command.SetHandler(async (string projectFile, string nameMapFile, int shortMaxSize) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .Create(projectFile, nameMapFile: nameMapFile, shortNameMaxSize: shortMaxSize);
        }, projectFile, nameMapFile, shortMaxSize);

        return command;
    }

    private Command DisplayOption(IServiceProvider serviceProvider)
    {
        Argument<string> projectFile = new("projectFile", "Project file to read or create (extension is *.project.json");

        var command = new Command("display", "Display project file")
        {
            projectFile,
        };

        command.SetHandler((string projectFile) =>
        {
            serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .Read(projectFile)
                .LogProperties(_logger);

        }, projectFile);

        return command;
    }
}
