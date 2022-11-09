using DataTools.sdk.Model;
using DataTools.sdk.Storage;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using System.Diagnostics;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class UpdateSourceActivity
{
    private readonly ILogger<UpdateSourceActivity> _logger;

    public UpdateSourceActivity(ILogger<UpdateSourceActivity> logger) => _logger = logger.NotNull();

    public Task Update(string sourceFile, SqlProjectOption option, string outputFile)
    {
        sourceFile.NotEmpty();
        option.NotNull();
        outputFile.NotEmpty();
        using var ls = _logger.LogEntryExit();

        new
        {
            FilteringSource = sourceFile,
            TableListFile = option.CommandOptions
                .Where(x => x.Type == CommandType.Exclude)
                .Select(x => x.ToString())
                .Join(", "),
            OutputFile = outputFile,
        }.LogProperties("Settings....", _logger);

        DataDictionary dataDictionary = DataDictionaryFile.Read(sourceFile);

        WriteUpdateDataDictionary(dataDictionary, outputFile, option);
        return Task.CompletedTask;
    }

    private void WriteUpdateDataDictionary(DataDictionary dataDictionary, string outputFile, SqlProjectOption option)
    {
        IReadOnlyList<TableInfo> outputInfos = dataDictionary.Items
            .Select(x => x with
            {
                PII = option.IsPII(x.TableName, x.ColumnName),
                Restricted = option.IsRestricted(x.TableName, x.ColumnName),

                PrimaryKey = x.PrimaryKey || option.IsColumnPrimaryKey(x.TableName, x.ColumnName),
                Excluded = option.IsColumnExcluded(x.TableName, x.ColumnName),
            })
            .ToList();

        new DataDictionary
        {
            Items = outputInfos,
        }.Write(outputFile);

        _logger.LogInformation("Completed writing output={outputFile}", outputFile);
    }
}
