using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SqlGenerator.Activities;
using SqlGenerator.sdk.Application;
using System;
using System.CommandLine;
using System.CommandLine.Binding;
using System.Diagnostics;
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

        AddCommand(SetSourceFile(serviceProvider));
        AddCommand(SetOptionFile(serviceProvider));
        AddCommand(SetMasterFile(serviceProvider));
        AddCommand(SetBuildFolder(serviceProvider));
        AddCommand(Filter(serviceProvider));
        AddCommand(ShortNameOptions(serviceProvider));
        AddCommand(UspLoadTable(serviceProvider));
        AddCommand(RawToCultivated(serviceProvider));

        AddCommand(DisplayOption(serviceProvider));
    }

    private Argument<string> NewProjectFileArgument() => new("projectFile", "Project file to read or create (extension is *.project.json");

    private Command SetSourceFile(IServiceProvider serviceProvider)
    {
        var projectFile = NewProjectFileArgument();
        Argument<string> sourceFile = new("sourceFile", "Source csv file with table and column data");

        var command = new Command("SourceFile", "Set source file")
        {
            projectFile,
            sourceFile,
        };

        command.SetHandler(async (string projectFile, string file) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .SetSourceFile(projectFile, file);
        }, projectFile, sourceFile);

        return command;
    }

    private Command SetOptionFile(IServiceProvider serviceProvider)
    {
        var projectFile = NewProjectFileArgument();
        Argument<string> optionFile = new("optionFile", "Processing options json file");

        var command = new Command("OptionFile", "Set source file")
        {
            projectFile,
            optionFile,
        };

        command.SetHandler(async (string projectFile, string file) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .SetOptionFile(projectFile, file);
        }, projectFile, optionFile);

        return command;
    }

    private Command SetMasterFile(IServiceProvider serviceProvider)
    {
        var projectFile = NewProjectFileArgument();
        Argument<string> masterFile = new("masterFile", "Name of master file to create from source");

        var command = new Command("MasterFile", "Set source file")
        {
            projectFile,
            masterFile,
        };

        command.SetHandler(async (string projectFile, string file) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .SetMasterFile(projectFile, file);
        }, projectFile, masterFile);

        return command;
    }

    private Command SetBuildFolder(IServiceProvider serviceProvider)
    {
        var projectFile = NewProjectFileArgument();
        Option<string> buildFolder = new("buildFolder", "Folder path build folder for generating SQL scripts (default 'model' in same folder as project file)");

        var command = new Command("BuildFolder", "Set source file")
        {
            projectFile,
            buildFolder,
        };

        command.SetHandler(async (string projectFile, string file) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .SetBuildFolder(projectFile, file);
        }, projectFile, buildFolder);

        return command;
    }

    private Command Filter(IServiceProvider serviceProvider)
    {
        Argument<string> projectFile = new("projectFile", "Project file to read or create (extension is *.project.json");
        Argument<string> tableListFile = new("tableListFile", "File that list tables be included");

        var command = new Command("Filter", "Set project details")
        {
            projectFile,
            tableListFile
        };

        command.SetHandler(async (string projectFile, string tableListFile) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .SetTableListFile(projectFile, tableListFile);
        }, projectFile, tableListFile);

        return command;
    }

    private Command ShortNameOptions(IServiceProvider serviceProvider)
    {
        Argument<string> projectFile = new("projectFile", "Project file to read or create (extension is *.project.json");
        Argument<string> nameMapFile = new("nameMapFile", "File to the long to short dictionary, used to create short names");
        Argument<int> shortMaxSize = new("shortMaxSize", "Max column name size for short name.");

        var command = new Command("ShortName", "Set details to generate short names")
        {
            projectFile,
            nameMapFile,
            shortMaxSize
        };

        command.SetHandler(async (string projectFile, string nameMapFile, int shortMaxSize) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .SetNameMap(projectFile, nameMapFile, shortMaxSize);
        }, projectFile, nameMapFile, shortMaxSize);

        return command;
    }

    private Command UspLoadTable(IServiceProvider serviceProvider)
    {
        Argument<string> projectFile = new("projectFile", "Project file to read or create (extension is *.project.json");
        Argument<string> outputFile = new("outputFile", "Name of the file to generate the primary key definitions");
        Argument<string> dataTableName = new("dataTableName", "Name of the sql data table name (including schema) to insert into");
        Argument<string> dataLayerName = new("dataLayerName", "Data layer name for insert");

        var command = new Command("UspLoadTable", "Configuration for 'Usp Load Table metadata' script")
        {
            projectFile,
            outputFile,
            dataTableName,
            dataLayerName
        };

        command.SetHandler(async (string projectFile, string outputFile, string dataTableName, string dataLayerName) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .SetUspLoadTableOption(projectFile, outputFile, dataTableName, dataLayerName);
        }, projectFile, outputFile, dataTableName, dataLayerName);

        return command;
    }


    private Command RawToCultivated(IServiceProvider serviceProvider)
    {
        Argument<string> projectFile = new("projectFile", "Project file to read or create (extension is *.project.json");
        Argument<string> outputFile = new("outputFile", "Name of the file to generate the primary key definitions");
        Argument<string> pipelineName = new("pipelineName", "Name of the pipeline");
        Argument<string> activityName = new("activityName", "Name of the activity");
        Argument<string?> paramValueFormat = new("paramValueFormat", "Param value format '{prefix}*{suffix}");

        var command = new Command("rawToCultivated", "Set RawToCultivated configuration")
        {
            projectFile,
            outputFile,
            pipelineName,
            activityName,
            paramValueFormat
        };

        command.SetHandler(async (string projectFile, string outputFile, string pipelineName, string activityName, string? paramValueFormat) =>
        {
            await serviceProvider
                .GetRequiredService<ProjectOptionActivity>()
                .SetRawToCultivated(projectFile, outputFile, pipelineName, activityName, paramValueFormat);
        }, projectFile, outputFile, pipelineName, activityName, paramValueFormat);

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
