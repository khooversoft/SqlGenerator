using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public class ShortNameActivity
{
    private readonly ILogger<ShortNameActivity> _logger;

    public ShortNameActivity(ILogger<ShortNameActivity> logger) => _logger = logger.NotNull();

    public Task AddShortName(string sourceFile, string shortNameMapFile, int maxColumnNameSize, string outputFile)
    {
        sourceFile.NotEmpty();
        shortNameMapFile.NotEmpty();
        maxColumnNameSize.Assert(x => x > 0, "Invalid max column name size");
        outputFile.NotEmpty();
        using var ls = _logger.LogEntryExit();

        string logLine = new[]
{
            $"Starting short name analysis for source={sourceFile}",
            $"shortNameMapFile={shortNameMapFile}",
            $"maxColumnNameSize={maxColumnNameSize}",
            $"outputFile={outputFile}",
        }.Join("," + Environment.NewLine);
        _logger.LogInformation(logLine);

        var tableInfos = CsvFile.Read(sourceFile);

        IReadOnlyList<NameMapRecord> nameMap = File.ReadAllText(shortNameMapFile)
            .NotNull()
            .ToObject<IReadOnlyList<NameMapRecord>>()
            .NotNull();

        IReadOnlyList<TableInfoModel> result = tableInfos
            .Select(x => x with { ShortName = nameMap.ShortName(x.ColumnName, maxColumnNameSize) })
            .Select(x => x.ConvertTo())
            .ToList();

        CsvFile.Write(outputFile, result);
        _logger.LogInformation("Completed adding short names");

        return Task.CompletedTask;
    }
}
