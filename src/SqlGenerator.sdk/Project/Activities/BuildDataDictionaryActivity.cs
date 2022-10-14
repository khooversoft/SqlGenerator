using DataTools.sdk.Model;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Model;
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

    public Task Build(string modelFile, string outputFile)
    {
        modelFile.NotEmpty();
        outputFile.NotNull();

        _logger.LogInformation("Building data dictionary {file} from model {modelFile}", outputFile, modelFile);

        PhysicalModel model = PhysicalModelFile.Read(modelFile);

        IReadOnlyList<TableInfo> tableInfos = model.Tables
            .SelectMany(x => x.Columns, (o, i) => (table: o, column: i))
            .Select(x => new TableInfo
            {
                TableName = x.table.Name.Name,
                ColumnName = x.column.Name,
                DataType = x.column.DataType,
                NotNull = x.column.NotNull,
                PrimaryKey = x.column.PrimaryKey,
                Restricted = x.column.Restricted,
                PII = x.column.PII,
            }).ToList();

        var tableColumns = tableInfos
            .GroupBy(x => x.TableName)
            .SelectMany(x => x);

        new DataDictionary
        {
            Items = tableColumns.ToArray(),
        }.Write(outputFile);

        return Task.CompletedTask;
    }
}
