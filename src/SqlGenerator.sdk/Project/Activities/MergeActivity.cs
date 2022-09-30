using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.CsvStore;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class MergeActivity
{
    private readonly ILogger<MergeActivity> _logger;

    public MergeActivity(ILogger<MergeActivity> logger) => _logger = logger.NotNull();

    public Task Merge(string inputFile, string targetFile)
    {
        inputFile.NotEmpty().Assert(x => File.Exists(x), x => $"Input file {x} does not exist");
        targetFile.NotEmpty().Assert(x => File.Exists(x), x => $"Target file {x} does not exist");

        _logger.LogInformation("Merging {inputFile} into {targetFile} for PII and protected settings", inputFile, targetFile);

        DataDictionary input = DataDictionaryFile.Read(inputFile);
        DataDictionary target = DataDictionaryFile.Read(targetFile);

        Dictionary<(string, string), TableInfo> inputDict = input.Items.ToDictionary(x => x.GetColumnId(), x => x);

        IReadOnlyList<TableInfo> updated = target.Items
            .Select(x => lookup(x.GetColumnId()) switch
            {
                null => x,
                TableInfo v => x with
                {
                    Restricted = x.Restricted || v.Restricted,
                    PII = x.PII || v.PII,
                },
            })
            .ToList();

        (target.Items.Count == updated.Count)
            .Assert(x => x == true, $"Target count={target.Items.Count} does not match updated count={updated.Count}");

        LogStats(input.Items, target.Items, updated);

        new DataDictionary
        {
            Items = updated,
        }.Write(targetFile);

        return Task.CompletedTask;


        TableInfo? lookup((string, string) value)
        {
            bool found = inputDict.TryGetValue(value, out var result);
            return found ? result : null;
        }
    }

    private void LogStats(IReadOnlyList<TableInfo> input, IReadOnlyList<TableInfo> target, IReadOnlyList<TableInfo> updated)
    {
        string line = new[]
        {
            input
                .Where(x => x.Restricted)
                .Count()
                .Func(x => $"Input restrict count={x}"),

            input
                .Where(x => x.PII)
                .Count()
                .Func(x => $"Input PII count={x}"),

            target
                .Join(updated, x => x.GetColumnId(), x => x.GetColumnId(), (o, i) => (o, i))
                .Where(x => x.o != x.i)
                .Select(x => x.i)
                .Action(x => x.ForEach(y =>
                {
                    _logger.LogTrace("Table={table}, column={column} was updated, restricted={r}, PII={p}", y.TableName, y.ColumnName, y.Restricted, y.PII);
                }))
                .Count()
                .Func(x => $"Number of table/columns updated is {x}"),
        }.Concat(input
            .Where(x => x.Restricted || x.PII)
            .Select(x => x.GetColumnId())
            .Except(input.Join(target, x => x.GetColumnId(), x => x.GetColumnId(), (x, _) => x.GetColumnId()))
            .Select(x => $"Table/Column={x} was not found in target and was not updated")
        )
        .Join(Environment.NewLine);

        _logger.LogInformation(line);
    }
}
