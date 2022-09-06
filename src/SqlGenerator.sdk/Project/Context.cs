using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using System.Collections.Concurrent;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public record Context
{
    public string ProjectFile { get; init; } = null!;
    public ProjectOption ProjectOption { get; init; } = null!;
    public bool Force { get; init; }
    public string BuildFolder { get; init; } = null!;
    public string ModelFolder { get; init; } = null!;
    public string BackupFolder { get; init; } = null!;
    public ConfigFile SourceFile { get; init; } = null!;
    public ConfigFile FilterFile { get; init; } = null!;
    public ConfigFile ModelFile { get; init; } = null!;
    public ConfigFile DataDictionaryFile { get; init; } = null!;
    public ConfigFile StatsFile { get; init; } = null!;

    public Counters Counters { get; } = new();
}


public static class ContextExtensions
{
    private const string _filterExtension = ".filtered.csv";
    private const string _modelExtension = ".model.json";
    private const string _dataDictionaryExtension = ".dataDictionary.csv";
    private const string _statsExtension = ".stats.csv";

    public static SchemaOption GetSchemaOption(this Context context, ILogger logger)
    {
        context.NotNull();
        context.ProjectOption.NotNull();
        context.ProjectOption.OptionFile.NotEmpty();

        string folder = Path.GetDirectoryName(context.ProjectFile).NotEmpty();
        string optionFile = PathTool.ApplyBasePath(context.ProjectOption.OptionFile, folder)!;

        optionFile.Assert(x => File.Exists(x), x => $"File {x} does not exist");

        SchemaOption importOption = File.ReadAllText(optionFile)
            .ToObject<SchemaOption>()
            .NotNull();
        logger.LogInformation("Read option file {file}", optionFile);

        return new SchemaOption
        {
            Schemas = importOption.Schemas.ToList(),
            PrefixColumns = importOption.PrefixColumns.ToList(),
            SufixColumns = importOption.SufixColumns.ToList(),
        };
    }

    public static Context CreateContext(this ProjectOption projectOption, string projectFile, ConfigFile sourceFile, bool force)
    {
        projectOption.NotNull();
        projectFile.NotEmpty();
        sourceFile.NotNull();

        string folder = projectOption.BuildFolder ?? Path.GetDirectoryName(sourceFile).NotNull();

        string buildFolder = Path.Combine(folder, "build");
        string modelFolder = Path.Combine(folder, "model");
        string backupFolder = Path.Combine(folder, "backup");

        var buildTemplate = Path.Combine(buildFolder, Path.GetFileName(sourceFile));
        var modelTemplate = Path.Combine(modelFolder, Path.GetFileName(sourceFile));
        var backupTemplate = Path.Combine(backupFolder, Path.GetFileName(sourceFile));

        return new Context
        {
            ProjectFile = projectFile,
            ProjectOption = projectOption,
            Force = force,
            SourceFile = sourceFile,

            BuildFolder = buildFolder,
            ModelFolder = modelFolder,
            BackupFolder = backupFolder,

            FilterFile = new ConfigFile(buildTemplate, _filterExtension),
            ModelFile = new ConfigFile(buildTemplate, _modelExtension),
            DataDictionaryFile = new ConfigFile(modelTemplate, _dataDictionaryExtension),
            StatsFile = new ConfigFile(modelTemplate, _statsExtension),
        };
    }
}