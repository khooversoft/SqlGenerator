using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class FileStoreBuilder
{
    private readonly ILogger<FileStoreBuilder> _logger;

    public FileStoreBuilder(ILogger<FileStoreBuilder> logger) => _logger = logger;

    public async Task Build(InstructionObjects instructionObjects, string baseFolder)
    {
        instructionObjects.NotNull();
        baseFolder.NotEmpty();
        using var ls = _logger.LogEntryExit();

        _logger.LogInformation("Writing objects to baseFolder={baseFolder}", baseFolder);

        foreach (var item in instructionObjects.Items)
        {
            var fileName = Path.Combine(baseFolder, item.Path);
            Directory.CreateDirectory(Path.GetDirectoryName(fileName).NotNull());

            using (var writer = new StreamWriter(fileName))
            {
                await item.Lines.ForEachAsync(async x => await writer.WriteLineAsync(x));
            }

            _logger.LogTrace("Lines written to file {fileName}", fileName);
        }

        _logger.LogInformation("Completed");
    }
}
