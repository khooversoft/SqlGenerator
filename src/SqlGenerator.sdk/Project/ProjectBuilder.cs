using DataTools.sdk.Storage;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Project.Activities;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public partial class ProjectBuilder
{
    private readonly ILogger<ProjectBuilder> _logger;
    private readonly UpdateSourceActivity _updateSourceActivity;
    private readonly ModelActivity _modelActivity;
    private readonly GenerateSqlCodeActivity _generateSqlCodeActivity;
    private readonly BuildDataDictionaryActivity _buildDataDictionaryActivity;
    private readonly MergeActivity _mergeActivity;
    private readonly UspLoadTableMetaActivity _uspLoadTableMetaActivity;
    private readonly RawToCultivatedActivity _rawToCultivatedActivity;

    public ProjectBuilder(
        UpdateSourceActivity updateSourceActivity,
        ModelActivity modelActivity,
        GenerateSqlCodeActivity generateSqlCodeActivity,
        BuildDataDictionaryActivity buildDataDictionaryActivity,
        MergeActivity mergeActivity,
        UspLoadTableMetaActivity uspLoadTableMetaActivity,
        RawToCultivatedActivity rawToCultivatedActivity,
        ILogger<ProjectBuilder> logger
        )
    {
        _updateSourceActivity = updateSourceActivity.NotNull();
        _modelActivity = modelActivity.NotNull();
        _generateSqlCodeActivity = generateSqlCodeActivity.NotNull();
        _buildDataDictionaryActivity = buildDataDictionaryActivity.NotNull();
        _mergeActivity = mergeActivity.NotNull();
        _uspLoadTableMetaActivity = uspLoadTableMetaActivity.NotNull();
        _rawToCultivatedActivity = rawToCultivatedActivity.NotNull();
        _logger = logger.NotNull();
    }

    public async Task<Context> Build(string projectFile, SqlProjectOption projectOption)
    {
        projectOption.Verify();

        _logger.LogInformation("Processing project {projectFile}", projectFile);

        ConfigFile sourceFile = projectOption.SourceFile
            .NotNull(name: "No source file specified, master file or source file")
            .Func(x => new ConfigFile(x))
            .Assert(x => x.Exists(), x => $"File {x.SourceFile} does not exist");

        var context = CreateContext(projectFile, projectOption, sourceFile);

        Setup(context);
        await UpdateSettings(context);
        await BuildModel(context);
        await GenerateSql(context);
        await GenerateUspLoadTable(context);
        await GenerateRawToCultivated(context);

        _logger.LogInformation("Completed build");
        return context;
    }

    private void Setup(Context context)
    {
        DirectoryTool.ClearDirectory(context.BuildFolder);
        DirectoryTool.ClearDirectory(context.ModelFolder);
    }

    private async Task UpdateSettings(Context context)
    {
        await _updateSourceActivity.Update(context.SourceFile, context.ProjectOption, context.DataDictionaryFile);
    }

    private async Task BuildModel(Context context)
    {
        ConfigFile sourceFile = context switch
        {
            Context v when v.DataDictionaryFile.Exists() => v.DataDictionaryFile,
            Context v when v.SourceFile.Exists() => v.SourceFile,

            _ => throw new InvalidOperationException(),
        };

        await _modelActivity.Build(sourceFile, context.ProjectOption, context.ModelFile);
    }

    private async Task GenerateSql(Context context)
    {
        if (!context.ModelFile.Exists())
        {
            _logger.LogError("Model file {file} does not exist to generate SQL", context.ModelFile);
            return;
        }

        await _generateSqlCodeActivity.Build(context.ModelFile, context.ModelFolder, context.ProjectOption);
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


    private Context CreateContext(string projectFile, SqlProjectOption projectOption, ConfigFile sourceFile)
    {
        var context = projectOption.CreateContext(projectFile, sourceFile);

        var logDetails = new
        {
            context.ProjectFile,
            context.BuildFolder,
            context.ModelFolder,
            context.SourceFile,
            context.ModelFile,
            context.DataDictionaryFile,

        }.LogProperties("Build properties...", _logger);

        return context;
    }
}
