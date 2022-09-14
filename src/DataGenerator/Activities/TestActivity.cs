using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.CsvStore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataGenerator.Activities;

public class TestActivity
{
    private readonly ILogger<TestActivity> _logger;
    public TestActivity(ILogger<TestActivity> logger) => _logger = logger;

    public async Task Generate(string dataDictionaryFile, string folderPath, int count, int pageSize, string delimiter)
    {
        dataDictionaryFile.NotEmpty();
        folderPath.NotEmpty();

        var context = new Context
        {
            DataDictionaryFile = dataDictionaryFile,
            FolderPath = folderPath,
            Count = count,
            PageSize = pageSize,
            Delimiter = delimiter,
        };

        IReadOnlyList<TableInfo> tableInfos = CsvFile.Read(dataDictionaryFile);

        var tableGroups = tableInfos
            .GroupBy(x => x.TableName);

        foreach (var table in tableGroups)
        {
            await GenerateData(context, table.Key, table.Select(x => x));
        }
    }

    private async Task GenerateData(Context context, string tableName, IEnumerable<TableInfo> tableInfos)
    {
        StreamWriter? sw = null;
        int fileCount = -1;

        for (int index = 0; index < context.Count; index++)
        {
            sw = sw ?? await Open(context, tableName, tableInfos, fileCount);

            if (index % context.PageSize == 0)
            {
                sw.Close();
                sw = null;
                continue;
            }

            //var xx = tableInfos.Select(x => x.DataType switch
            //    {
            //        string v when v == "
            //    }).ToList();


        }

        sw?.Close();

    }

    private async Task<StreamWriter> Open(Context context, string tableName, IEnumerable<TableInfo> tableInfos, int fileCount)
    {
        string file = Path.Combine(context.FolderPath, tableName + DateTime.Now.ToString("yyyyMMdd-hhmmss") + $"{fileCount++}.csv");

        _logger.LogInformation("Writing to {file}", file);
        var sw = new StreamWriter(file);

        await sw.WriteLineAsync(tableInfos.Select(x => x.ColumnName).Join(context.Delimiter));
        return sw;
    }

    private record Context
    {
        public string DataDictionaryFile { get; init; } = null!;
        public string FolderPath { get; init; } = null!;
        public int Count { get; init; }
        public int PageSize { get; init; }
        public string Delimiter { get; init; } = null!;
    }
}
