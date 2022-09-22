using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Project.Activities;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public partial class ProjectBuilder
{
    private readonly ILogger<ProjectBuilder> _logger;
    private readonly FilterSourceActivity _filterSourceActivity;
    private readonly ModelActivity _modelActivity;
    private readonly GenerateSqlCodeActivity _generateSqlCodeActivity;
    private readonly BuildDataDictionaryActivity _buildDataDictionaryActivity;
    private readonly MergeActivity _mergeActivity;
    private readonly UspLoadTableMetaActivity _uspLoadTableMetaActivity;
    private readonly RawToCultivatedActivity _rawToCultivatedActivity;
    private readonly ClassificationActivity _classificationActivity;

    public ProjectBuilder(
        FilterSourceActivity filterSourceActivity,
        ClassificationActivity classificationActivity,
        ModelActivity modelActivity,
        GenerateSqlCodeActivity generateSqlCodeActivity,
        BuildDataDictionaryActivity buildDataDictionaryActivity,
        MergeActivity mergeActivity,
        UspLoadTableMetaActivity uspLoadTableMetaActivity,
        RawToCultivatedActivity rawToCultivatedActivity,
        ILogger<ProjectBuilder> logger
        )
    {
        _filterSourceActivity = filterSourceActivity.NotNull();
        _classificationActivity = classificationActivity.NotNull();
        _modelActivity = modelActivity.NotNull();
        _generateSqlCodeActivity = generateSqlCodeActivity.NotNull();
        _buildDataDictionaryActivity = buildDataDictionaryActivity.NotNull();
        _mergeActivity = mergeActivity.NotNull();
        _uspLoadTableMetaActivity = uspLoadTableMetaActivity.NotNull();
        _rawToCultivatedActivity = rawToCultivatedActivity.NotNull();
        _logger = logger.NotNull();
    }

    public async Task<Context> Build(string projectFile, ProjectOption projectOption, bool force, bool useSource)
    {
        projectOption.Verify();

        _logger.LogInformation("Processing project {projectFile}, force={force}, useSource={useSource}", projectFile, force, useSource);

        ConfigFile sourceFile = projectOption.SourceFile
            .NotNull(name: "No source file specified, master file or source file")
            .Func(x => new ConfigFile(x))
            .Assert(x => x.Exists(), x => $"File {x.SourceFile} does not exist");

        var context = CreateContext(projectFile, projectOption, sourceFile, force);

        Setup(context);
        await BuildFilteredFile(context);
        await BuildClassificationFile(context);
        await BuildModel(context);
        await BuildDataDictionary(context);
        await GenerateSql(context);
        await GenerateUspLoadTable(context);
        await GenerateRawToCultivated(context);

        WriteStats(context);

        _logger.LogInformation("Completed build");
        return context;
    }

    private void WriteStats(Context context)
    {
        _logger.LogInformation("Writing stats to {file}", context.StatsFile);
        CsvFile.Write(context.StatsFile, context.Counters);
    }

    private void Setup(Context context)
    {
        DirectoryTool.ClearDirectory(context.BuildFolder);
        DirectoryTool.ClearDirectory(context.ModelFolder);

        if (!context.Force) return;

        _logger.LogInformation("--force specified, cleaning work files");
        context.FilterFile.Delete();
        context.ModelFile.Delete();
        context.DataDictionaryFile.Delete();
    }

    private async Task BuildFilteredFile(Context context)
    {
        if (context.ProjectOption.TableListFile.IsEmpty())
        {
            _logger.LogWarning("Skipping building filtered file, no table list file is specified in project file.");
            return;
        }

        if (context.SourceFile.GetLastUpdateDate() > context.FilterFile.GetLastUpdateDate())
        {
            _logger.LogInformation("Skipping building filtered file, file is up to date");
            return;
        }

        Counters counters = await _filterSourceActivity.Filter(context.SourceFile, context.ProjectOption.TableListFile, context.FilterFile);
        context.Counters.Add(counters);
    }

    private async Task BuildClassificationFile(Context context)
    {
        if (context.ProjectOption.ClassificationFile.IsEmpty())
        {
            _logger.LogWarning("Skipping building filtered file, no table list file is specified in project file.");
            return;
        }

        ConfigFile sourceFile = context switch
        {
            Context v when v.ClassificationFile.Exists() => v.ClassificationFile,
            Context v when v.FilterFile.Exists() => v.FilterFile,
            Context v when v.SourceFile.Exists() => v.SourceFile,

            _ => throw new InvalidOperationException(),
        };

        Counters counters = await _classificationActivity.Classify(sourceFile, context.ProjectOption.ClassificationFile, context.ClassificationFile);
        context.Counters.Add(counters);
    }

    private async Task BuildModel(Context context)
    {
        if (context.ProjectOption.OptionFile.IsEmpty())
        {
            _logger.LogWarning("Skipping building model, no option file was specified.");
            return;
        }

        ConfigFile sourceFile = context switch
        {
            Context v when v.ClassificationFile.Exists() => v.ClassificationFile,
            Context v when v.FilterFile.Exists() => v.FilterFile,
            Context v when v.SourceFile.Exists() => v.SourceFile,

            _ => throw new InvalidOperationException(),
        };

        _logger.LogInformation("Reading option {file} file", context.ProjectOption.OptionFile);
        SchemaOption schemaOption = context.GetSchemaOption(_logger);

        Counters counters = await _modelActivity.Build(sourceFile, schemaOption, context.ModelFile, context.ProjectOption.NameMapFile);
        context.Counters.Add(counters);
    }

    private async Task BuildDataDictionary(Context context)
    {
        if (!context.ModelFile.Exists())
        {
            _logger.LogWarning("Model file {file} does not exist, skipping", context.ModelFile);
            return;

        }

        await _buildDataDictionaryActivity.Build(context.ModelFile, context.DataDictionaryFile);
    }

    private async Task GenerateSql(Context context)
    {
        if (!context.ModelFile.Exists())
        {
            _logger.LogError("Model file {file} does not exist to generate SQL", context.ModelFile);
            return;
        }

        Counters counters = await _generateSqlCodeActivity.Build(context.ModelFile, context.ModelFolder);
        context.Counters.Add(counters);
    }

    private async Task GenerateUspLoadTable(Context context)
    {
        if (!context.ModelFile.Exists())
        {
            _logger.LogError("Model file {file} does not exist to generate SQL", context.ModelFile);
            return;
        }

        if (context.ProjectOption.UspLoadTableOption == null)
        {
            _logger.LogWarning("Skipping, UspLoadTableOption option not specified");
            return;
        }

        await _uspLoadTableMetaActivity.Build(context.ModelFile, context.ModelFolder, context.ProjectOption.UspLoadTableOption);
    }

    private async Task GenerateRawToCultivated(Context context)
    {
        if (!context.ModelFile.Exists())
        {
            _logger.LogError("Model file {file} does not exist to generate SQL", context.ModelFile);
            return;
        }

        if (context.ProjectOption.RawToCultivated == null)
        {
            _logger.LogWarning("Skipping, RawToCultivated option not specified");
            return;
        }

        await _rawToCultivatedActivity.Build(context.ModelFile, context.ModelFolder, context.ProjectOption.RawToCultivated);
    }


    private Context CreateContext(string projectFile, ProjectOption projectOption, ConfigFile sourceFile, bool force)
    {
        var context = projectOption.CreateContext(projectFile, sourceFile, force);
        context.LogProperties("Build properties...", _logger);
        return context;
    }
}
