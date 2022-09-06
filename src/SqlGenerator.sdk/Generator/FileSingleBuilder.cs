using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class FileSingleBuilder
{
    private readonly ILogger<FileStoreBuilder> _logger;

    public FileSingleBuilder(ILogger<FileStoreBuilder> logger) => _logger = logger;

    public async Task Build(InstructionObjects instructionObjects, string outputFile)
    {
        instructionObjects.NotNull();
        outputFile.NotEmpty();
        using var ls = _logger.LogEntryExit();

        _logger.LogInformation("Writing all objects to single file={file}", outputFile);
        Directory.CreateDirectory(Path.GetDirectoryName(outputFile).NotNull());

        int count = 0;
        using var writer = new StreamWriter(outputFile);

        foreach (var item in instructionObjects.Items)
        {
            await item.Lines.ForEachAsync(async x => await writer.WriteLineAsync(x));
            await writer.WriteLineAsync("");
            count++;
        }

        _logger.LogTrace("Completed - Written {lines} to file {fileName}", count, outputFile);
    }
}
