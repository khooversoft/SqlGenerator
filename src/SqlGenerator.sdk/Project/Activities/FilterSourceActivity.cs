using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.CsvStore;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class FilterSourceActivity
{
    private readonly ILogger<FilterSourceActivity> _logger;

    public FilterSourceActivity(ILogger<FilterSourceActivity> logger) => _logger = logger.NotNull();

    public Task<Counters> Filter(string sourceFile, string tableListFile, string outputFile)
    {
        sourceFile.NotEmpty();
        tableListFile.NotEmpty();
        outputFile.NotEmpty();

        using var ls = _logger.LogEntryExit();

        string logLine = new[]
        {
            $"Filtering source={sourceFile}",
            $"TableListFile={tableListFile}",
            $"OutputFile={outputFile}",
        }.Join("," + Environment.NewLine);
        _logger.LogInformation(logLine);

        DataDictionary dataDictionary = DataDictionaryFile.Read(sourceFile);

        IReadOnlyList<string> tableList = File.ReadAllText(tableListFile)
            .NotNull()
            .ToObject<IReadOnlyList<string>>()
            .NotNull();

        IReadOnlyList<TableInfo> outputInfos = dataDictionary.Items
            .Join(tableList, x => x.TableName, x => x, (x, _) => x, StringComparer.OrdinalIgnoreCase)
            .ToList();

        new DataDictionary
        {
            File = outputFile,
            Items = outputInfos,
        }.Write();

        _logger.LogInformation("Completed writing output={outputFile}", outputFile);

        Verify(tableList, outputInfos);

        LogAnalysis(tableList, dataDictionary.Items);
        var counters = LogStats(tableList, dataDictionary.Items, outputInfos);
        return Task.FromResult(counters);
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

    private void Verify(IReadOnlyList<string> tableList, IReadOnlyList<TableInfo> tableInfos)
    {
        var tables = tableInfos.Select(x => x.TableName).Distinct().ToList();
        var tableListDistinct = tableList.Distinct().ToList();
        var notIncludedTables = tables.Except(tableListDistinct).ToList();

        notIncludedTables.Assert(x => x.Count == 0, x => $"Tables not in the include table list, list={notIncludedTables.Join(",")}");
    }

    private void LogAnalysis(IReadOnlyList<string> tableList, IReadOnlyList<TableInfo> tableInfos)
    {
        var sourceDistinctTables = tableInfos.Select(x => x.TableName).Distinct().ToList();

        tableList
            .SelectMany(x => sourceDistinctTables
                .Where(
                    y => !y.Equals(x, StringComparison.OrdinalIgnoreCase) && y.Contains(x, StringComparison.OrdinalIgnoreCase)),
                    (o, i) => (o, i)
                    )
            .Select(x => $"Filter table={x.o} fuzzy matches in model={x.i}")
            .Distinct()
            .ForEach(x => _logger.LogTrace(x));

        tableList.Where(x => !tableInfos.Any(y => y.TableName.Equals(x, StringComparison.OrdinalIgnoreCase)))
            .OrderBy(x => x)
            .ForEach(x => _logger.LogTrace("Table {tableName} in filter list is not in model source", x));
    }
}
