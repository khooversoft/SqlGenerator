using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.CsvStore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class BuildDataDictionaryActivity
{
    private readonly ILogger<BuildDataDictionaryActivity> _logger;

    public BuildDataDictionaryActivity(ILogger<BuildDataDictionaryActivity> logger) => _logger = logger;

    public Task Build(string sourceFile, string outputFile)
    {
        sourceFile.NotEmpty();
        outputFile.NotNull();

        _logger.LogInformation("Building data dictionary {file} from {sourceFile}", outputFile, sourceFile);

        IReadOnlyList<TableInfo> tableInfos = CsvFile.Read(sourceFile);

        var tableColumns = tableInfos
            .GroupBy(x => x.TableName)
            .SelectMany(x => x.Select((x, i) => x.ConvertTo().ToTableInfoExport(i)))
            .ToList();

        CsvFile.Write(outputFile, tableColumns);
        return Task.CompletedTask;
    }
}
