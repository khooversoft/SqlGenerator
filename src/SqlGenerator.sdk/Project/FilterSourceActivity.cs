using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.CsvStore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public class FilterSourceActivity
{
    private readonly ILogger<FilterSourceActivity> _logger;

    public FilterSourceActivity(ILogger<FilterSourceActivity> logger) => _logger = logger.NotNull();

    public Task Filter(string sourceFile, string tableListFile, string? outputFile)
    {
        sourceFile.NotEmpty();
        tableListFile.NotEmpty();

        outputFile = outputFile ?? sourceFile;
        using var ls = _logger.LogEntryExit();

        string logLine = new[]
        {
            $"Filtering source={sourceFile}",
            $"TableListFile={tableListFile}",
            $"OutputFile={outputFile}",
        }.Join("," + Environment.NewLine);
        _logger.LogInformation(logLine);

        var tableInfos = CsvFile.Read(sourceFile);

        IReadOnlyList<string> tableList = File.ReadAllText(tableListFile)
            .NotNull()
            .ToObject<IReadOnlyList<string>>()
            .NotNull();

        List<TableInfoModel> outputInfos = tableInfos
            .Join(tableList, x => x.TableName, x => x, (x, _) => x, StringComparer.OrdinalIgnoreCase)
            .Select(x => x.ConvertTo())
            .ToList();

        CsvFile.Write(outputFile, outputInfos);
        _logger.LogInformation("Completed writing output={outputFile}", outputFile);

        Verify(tableList, outputInfos);
        return Task.CompletedTask;
    }

    private void Verify(IReadOnlyList<string> tableList, IReadOnlyList<TableInfoModel> tableInfos)
    {
        var tables = tableInfos.Select(x => x.TableName).Distinct().ToList();
        var tableListDistinct = tableList.Distinct().ToList();
        var notIncludedTables = tables.Except(tableListDistinct).ToList();

        notIncludedTables.Assert(x => x.Count == 0, x => $"Tables not in the include table list, list={notIncludedTables.Join(",")}");
    }
}
