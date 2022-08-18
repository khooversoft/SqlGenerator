using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using SqlGenerator.Data;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Model;
using SqlGenerator.sdk.Store;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.Activities;

internal class BuildActivity
{
    private readonly ILoggerFactory _factory;
    private readonly ILogger<BuildActivity> _logger;

    public BuildActivity(ILoggerFactory factory)
    {
        _factory = factory.NotNull();
        _logger = _factory.CreateLogger<BuildActivity>();
    }

    public async Task Generate(string projectFile, string outputFolder)
    {
        projectFile.NotEmpty().Assert(x => File.Exists(x), x => $"File {x} does not exist");
        outputFolder.NotEmpty();
        _logger.LogInformation("Generating, sourceFile={sourceFile}, outputFolder={outputFolder}, optionFile={optionFile}", projectFile, outputFolder, optionFile);

        bool IsCsvFile = Path.GetExtension(projectFile).Equals(".csv", StringComparison.OrdinalIgnoreCase);
        _logger.LogInformation("Reading as {type}", IsCsvFile ? "CSV" : "MODEL");

        var projectOption = new ConfigurationBuilder()
            .AddJsonFile(projectFile)
            .Build()
            .Bind<ProjectOption>();

        await new SqlGeneratorBuilder()
            .SetName(Path.GetFileNameWithoutExtension(projectFile))
            .SetFile(projectFile)
            .SetOption(GetOption(optionFile))
            .SetPublishFolder(outputFolder)
            .Build(_factory);

        _logger.LogInformation("Completed");
    }

    private ImportOption GetOption(string? optionFile)
    {
        if (optionFile.IsEmpty()) return DefaultImportOption.Default;

        return new ConfigurationBuilder()
            .AddJsonFile(optionFile)
            .Build()
            .Bind<ImportOption>();
    }
}
