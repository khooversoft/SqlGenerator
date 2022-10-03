using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using System.Diagnostics;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class FilterSourceActivity
{
    private readonly ILogger<FilterSourceActivity> _logger;

    public FilterSourceActivity(ILogger<FilterSourceActivity> logger) => _logger = logger.NotNull();

    public Task<Counters> Filter(string sourceFile, string tableListFile, string outputFile, string mappingFile)
    {
        sourceFile.NotEmpty();
        tableListFile.NotEmpty();
        outputFile.NotEmpty();
        mappingFile.NotEmpty();
        using var ls = _logger.LogEntryExit();

        new
        {
            FilteringSource = sourceFile,
            TableListFile = tableListFile,
            OutputFile = outputFile,
        }.LogProperties("Settings....", _logger);

        MasterTableOption masterTableOption = MasterTableOptionFile.Read(tableListFile);
        DataDictionary dataDictionary = DataDictionaryFile.Read(sourceFile);

        var counters = WriteFilteredDataDictionary(dataDictionary, outputFile, masterTableOption);
        WriteMappingFile(masterTableOption, dataDictionary, mappingFile);

        return Task.FromResult(counters);
    }

    private Counters WriteFilteredDataDictionary(DataDictionary dataDictionary, string outputFile, MasterTableOption masterTableOption)
    {
        IReadOnlyList<TableInfo> outputInfos = dataDictionary.Items
            .Where(x => masterTableOption.IsIncluded(x.TableName, x.ColumnName))
            .ToList();

        new DataDictionary
        {
            Items = outputInfos,
        }.Write(outputFile);

        _logger.LogInformation("Completed writing output={outputFile}", outputFile);

        return LogStats(masterTableOption.Tables, dataDictionary.Items, outputInfos);
    }

    private void WriteMappingFile(MasterTableOption masterTableOption, DataDictionary dataDictionary, string mappingFile)
    {
        var optionList = masterTableOption
            .GetDetails()
            .Where(x => !x.MapToName.IsEmpty())
            .ToArray();

        if (optionList.Length == 0)
        {
            _logger.LogInformation("No MapToName records detected, skipping creating mapping file");
            if (File.Exists(mappingFile)) File.Delete(mappingFile);
            return;
        }

        var mappingDetails = dataDictionary.Items
            .Select(x => (data: x, find: masterTableOption.Find(x.TableName, x.ColumnName)))
            .Where(x => x.find != null && !x.find.MapToName.IsEmpty())
            .Select(x => new { TableName = x.data.TableName, ColumnName = x.data.ColumnName, MapToName = x.find!.MapToName }.ToDynamic())
            .ToArray();

        _logger.LogInformation("Writing mapping file {file}", mappingFile);
        CsvFile.Write(mappingFile, mappingDetails);
    }

    private Counters LogStats(IReadOnlyList<string> tableList, IReadOnlyList<TableInfo> tableInfos, IReadOnlyList<TableInfo> outputInfos)
    {
        var filterNotInSource = tableList.Where(x => !tableInfos.Any(y => y.TableName.Equals(x, StringComparison.OrdinalIgnoreCase)));

        var counters = new Counters(nameof(FilterSourceActivity))
        {
            ("Input table count", tableInfos.Select(x => x.TableName).Count()),
            ("Input table count(distinct)", tableInfos.Select(x => x.TableName).Distinct().Count()),
            ("Filter table count", tableList.Count()),
            ("Filter table count(distinct)", tableList.Distinct().Count()),
            ("Output count", outputInfos.Select(x => x.TableName).Count()),
            ("Output count(distinct)", outputInfos.Select(x => x.TableName).Distinct().Count()),
            ("Tables count from filter, not in source", filterNotInSource.Count()),
        };

        counters
            .Select(x => $"{x.Name}={x.Count}")
            .Join(Environment.NewLine)
            .Action(x => _logger.LogInformation(x));

        return counters;
    }
}
