using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using SqlGenerator.Data;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Import;
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

    public async Task Generate(string sourceFile, string outputFolder, string? optionFile)
    {
        sourceFile.NotEmpty().Assert(x => File.Exists(x), x => $"File {x} does not exist");
        outputFolder.NotEmpty();
        _logger.LogInformation("Generating, sourceFile={sourceFile}, outputFolder={outputFolder}, optionFile={optionFile}", sourceFile, outputFolder, optionFile);

        bool IsCsvFile = Path.GetExtension(sourceFile).Equals(".csv", StringComparison.OrdinalIgnoreCase);
        _logger.LogInformation("Reading as {type}", IsCsvFile ? "CSV" : "MODEL");

        await new SqlGeneratorBuilder()
            .SetName(Path.GetFileNameWithoutExtension(sourceFile))
            .SetFile(sourceFile)
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
