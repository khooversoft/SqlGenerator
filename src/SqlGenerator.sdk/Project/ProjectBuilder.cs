using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public partial class ProjectBuilder
{
    private const string _filterExtension = ".filtered.csv";
    private const string _shortNameExtension = ".shortName.csv";
    private const string _modelExtension = ".model.json";

    private readonly FilterSourceActivity _filterSourceActivity;
    private readonly ShortNameActivity _shortNameActivity;
    private readonly ILogger<ProjectBuilder> _logger;
    private readonly ModelActivity _modelActivity;
    private readonly GenerateSqlCodeActivity _generateSqlCodeActivity;

    public ProjectBuilder(
        FilterSourceActivity filterSourceActivity,
        ShortNameActivity shortNameActivity,
        ModelActivity modelActivity,
        GenerateSqlCodeActivity generateSqlCodeActivity,
        ILogger<ProjectBuilder> logger
        )
    {
        _filterSourceActivity = filterSourceActivity.NotNull();
        _shortNameActivity = shortNameActivity.NotNull();
        _modelActivity = modelActivity.NotNull();
        _generateSqlCodeActivity = generateSqlCodeActivity.NotNull();
        _logger = logger.NotNull();
    }

    public async Task<Context> Build(ProjectOption projectOption, bool force)
    {
        projectOption.Verify();

        string? masterSource = projectOption.MasterFile switch
        {
            string v when !force && File.Exists(v) => v,
            _ => null,
        };

        ConfigFile sourceFile = (masterSource ?? projectOption.SourceFile)
            .NotNull(name: "No source file specified, master file or source file")
            .Assert(x => File.Exists(x), x => $"File {x} does not exist")
            .Func(x => new ConfigFile(x));

        var context = CreateContext(projectOption, sourceFile, force);

        Clean(context);
        await BuildFilteredFile(context);
        await BuildShortFile(context);
        CreateMasterFile(context);
        await BuildModel(context);
        await GenerateSql(context);

        _logger.LogInformation("Completed build");
        return context;
    }

    private void Clean(Context context)
    {
        DirectoryTool.ClearDirectory(context.BuildFolder);

        if (!context.Force) return;

        context.FilterFile.Delete();
        context.ShortNameFile.Delete();
        context.ModelFile.Delete();
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

        await _filterSourceActivity.Filter(context.SourceFile, context.ProjectOption.TableListFile, context.FilterFile);
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

        await _shortNameActivity.AddShortName(
            sourceFile,
            context.ProjectOption.NameMapFile,
            (int)context.ProjectOption.ShortNameMaxSize,
            context.ShortNameFile
            );
    }

    public void CreateMasterFile(Context context)
    {
        if (context.ProjectOption.MasterFile.IsEmpty())
        {
            _logger.LogInformation("Skipping generating master file, master file not configured");
            return;
        }
        if (File.Exists(context.ProjectOption.MasterFile))
        {
            _logger.LogInformation("Skipping generating master file, because it already exist");
            return;
        }

        ConfigFile sourceFile = context switch
        {
            Context v when v.ShortNameFile.Exists() => v.ShortNameFile,
            Context v when v.FilterFile.Exists() => v.FilterFile,
            Context v when v.SourceFile.Exists() => v.SourceFile,

            _ => throw new InvalidOperationException(),
        };

        _logger.LogInformation("Copying result file {sourceFile} to master {masterFile}", sourceFile, context.ProjectOption.MasterFile);
        File.Copy(sourceFile, context.ProjectOption.MasterFile, false);
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
            Context v when v.ShortNameFile.Exists() => v.ShortNameFile,
            Context v when v.FilterFile.Exists() => v.FilterFile,
            Context v when v.SourceFile.Exists() => v.SourceFile,

            _ => throw new InvalidOperationException(),
        };

        if (sourceFile.GetLastUpdateDate() > context.ShortNameFile.GetLastUpdateDate())
        {
            _logger.LogInformation("Skipping building model, not change detected");
            return;
        }

        _logger.LogInformation("Reading option {file} file", context.ProjectOption.OptionFile);
        ImportOption importOption = ImportOptionBuilder.GetImportOption(context.ProjectOption, _logger);

        await _modelActivity.Build(sourceFile, importOption, context.ModelFile);
    }

    private async Task GenerateSql(Context context)
    {
        if (!context.ModelFile.Exists())
        {
            _logger.LogError("Model file {file} does not exist to generate SQL", context.ModelFile);
            return;
        }

        await _generateSqlCodeActivity.Build(context.ModelFile, context.ModelFolder);
    }

    private Context CreateContext(ProjectOption projectOption, ConfigFile sourceFile, bool force)
    {
        (string buildFolder, string modelFolder) = ConstructFolders(projectOption, sourceFile);
        var template = Path.Combine(buildFolder, Path.GetFileName(sourceFile.SourceFile));

        var context = new Context
        {
            ProjectOption = projectOption,
            Force = force,
            SourceFile = sourceFile,

            BuildFolder = buildFolder,
            ModelFolder = modelFolder,

            FilterFile = new ConfigFile(template, _filterExtension),
            ShortNameFile = new ConfigFile(template, _shortNameExtension),
            ModelFile = new ConfigFile(template, _modelExtension),
        };

        context.LogProperties(_logger);
        return context;
    }

    private static (string buildFolder, string modelFolder) ConstructFolders(ProjectOption projectOption, string sourceFile)
    {
        sourceFile.NotEmpty();
        string folder = projectOption.BuildFolder ?? Path.GetDirectoryName(sourceFile).NotNull();

        string buildFolder = Path.Combine(folder, "build");
        string modelFolder = Path.Combine(buildFolder, "model");

        return (buildFolder, modelFolder);
    }
}
