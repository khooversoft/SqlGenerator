using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Project.Activities;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public partial class ProjectBuilder
{
    private readonly ILogger<ProjectBuilder> _logger;
    private readonly FilterSourceActivity _filterSourceActivity;
    private readonly ShortNameActivity _shortNameActivity;
    private readonly ModelActivity _modelActivity;
    private readonly GenerateSqlCodeActivity _generateSqlCodeActivity;
    private readonly BuildDataDictionaryActivity _buildDataDictionaryActivity;
    private readonly MergeActivity _mergeActivity;

    public ProjectBuilder(
        FilterSourceActivity filterSourceActivity,
        ShortNameActivity shortNameActivity,
        ModelActivity modelActivity,
        GenerateSqlCodeActivity generateSqlCodeActivity,
        BuildDataDictionaryActivity buildDataDictionaryActivity,
        MergeActivity mergeActivity,
        ILogger<ProjectBuilder> logger
        )
    {
        _filterSourceActivity = filterSourceActivity.NotNull();
        _shortNameActivity = shortNameActivity.NotNull();
        _modelActivity = modelActivity.NotNull();
        _generateSqlCodeActivity = generateSqlCodeActivity.NotNull();
        _buildDataDictionaryActivity = buildDataDictionaryActivity.NotNull();
        _mergeActivity = mergeActivity.NotNull();
        _logger = logger.NotNull();
    }

    public async Task<Context> Build(string projectFile, ProjectOption projectOption, bool force, bool useSource)
    {
        projectOption.Verify();

        _logger.LogInformation("Processing project {projectFile}, force={force}, useSource={useSource}", projectFile, force, useSource);

        ConfigFile sourceFile = projectOption.SourceFile
            .NotNull(name: "No source file specified, master file or source file")
            .Assert(x => File.Exists(x), x => $"File {x} does not exist")
            .Func(x => new ConfigFile(x));

        var context = CreateContext(projectFile, projectOption, sourceFile, force);

        Setup(context);
        await BuildFilteredFile(context);
        await BuildShortFile(context);
        await CreateMasterFile(context);
        await BuildDataDictionary(context);
        await BuildModel(context);
        await GenerateSql(context);

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
        Directory.CreateDirectory(context.BackupFolder);

        if (!context.Force) return;

        _logger.LogInformation("--force specified, cleaning work files");
        context.FilterFile.Delete();
        context.ShortNameFile.Delete();
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

    private async Task BuildShortFile(Context context)
    {
        if (context.ProjectOption.NameMapFile.IsEmpty())
        {
            _logger.LogWarning("Skipping name shorting, no name map file specified.");
            return;
        }

        if (context.ProjectOption.ShortNameMaxSize == null)
        {
            _logger.LogInformation("Skipping name shorting, no max size specified.");
            return;
        }

        // Get source file in priority order
        ConfigFile sourceFile = context switch
        {
            Context v when v.FilterFile.Exists() => v.FilterFile,
            Context v when v.SourceFile.Exists() => v.SourceFile,

            _ => throw new InvalidOperationException(),
        };

        if (sourceFile.GetLastUpdateDate() > context.ShortNameFile.GetLastUpdateDate())
        {
            _logger.LogInformation("Skipping building short name file, file is up to date");
            return;
        }

        var counters = await _shortNameActivity.AddShortName(
            sourceFile,
            context.ProjectOption.NameMapFile,
            (int)context.ProjectOption.ShortNameMaxSize,
            context.ShortNameFile
            );
        context.Counters.Add(counters);
    }

    private async Task CreateMasterFile(Context context)
    {
        ConfigFile sourceFile = context switch
        {
            Context v when v.ShortNameFile.Exists() => v.ShortNameFile,
            Context v when v.FilterFile.Exists() => v.FilterFile,
            Context v when v.SourceFile.Exists() => v.SourceFile,

            _ => throw new InvalidOperationException(),
        };

        if (!context.MasterFile.Exists())
        {
            _logger.LogInformation("Copying result file {sourceFile} to master {masterFile}", sourceFile, context.MasterFile);
            File.Copy(sourceFile, context.MasterFile, false);
            return;
        }

        // Backup master file first
        string backupFile = DirectoryTool.BackupFile(context.MasterFile, context.BackupFolder);
        _logger.LogInformation("Backup master file {file} to {backupFile}", context.MasterFile, backupFile);

        // Copy source to master file, and merge current settings from the backup file
        File.Copy(sourceFile, context.MasterFile, true);

        _logger.LogInformation("Creating master {file} with settings from previous master file", context.MasterFile);
        await _mergeActivity.Merge(backupFile, context.MasterFile);
    }

    private async Task BuildDataDictionary(Context context)
    {
        ConfigFile sourceFile = context switch
        {
            Context v when v.MasterFile.Exists() => v.MasterFile,
            Context v when v.ShortNameFile.Exists() => v.ShortNameFile,
            Context v when v.FilterFile.Exists() => v.FilterFile,
            Context v when v.SourceFile.Exists() => v.SourceFile,

            _ => throw new InvalidOperationException(),
        };

        await _buildDataDictionaryActivity.Build(sourceFile, context.DataDictionaryFile);
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
            Context v when v.MasterFile.Exists() => v.MasterFile,
            Context v when v.ShortNameFile.Exists() => v.ShortNameFile,
            Context v when v.FilterFile.Exists() => v.FilterFile,
            Context v when v.SourceFile.Exists() => v.SourceFile,

            _ => throw new InvalidOperationException(),
        };

        _logger.LogInformation("Reading option {file} file", context.ProjectOption.OptionFile);
        ImportOption importOption = context.GetImportOption(_logger);

        Counters counters = await _modelActivity.Build(sourceFile, importOption, context.ModelFile);
        context.Counters.Add(counters);
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

    private Context CreateContext(string projectFile, ProjectOption projectOption, ConfigFile sourceFile, bool force)
    {
        var context = projectOption.CreateContext(projectFile, sourceFile, force);
        context.LogProperties(_logger);
        return context;
    }
}
