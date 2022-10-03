using DataGenerator.Application;
using DocumentFormat.OpenXml.Spreadsheet;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Data;
using SqlGenerator.sdk.Model;
using System.Text.RegularExpressions;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataGenerator.Activities;

internal class MergeActivity
{
    private readonly DataAnalysis _dataAnalysis;
    private readonly ILogger<MergeActivity> _logger;
    public MergeActivity(DataAnalysis dataAnalysis, ILogger<MergeActivity> logger)
    {
        _dataAnalysis = dataAnalysis.NotNull();
        _logger = logger.NotNull();
    }

    public async Task Run(string projectFile)
    {
        projectFile.NotEmpty();

        MergeProjectOption option = MergeProjectOptionFile.Read(projectFile);
        option.Files.Count.Assert(x => x > 0, $"There are no files to merge / analysis in project file {projectFile}");

        _logger.LogInformation("Running merge for project {file}", projectFile);

        IReadOnlyList<FileDetail> files = await option.Files
            .Select(x => ReadFile(projectFile, x, option))
            .FuncAsync(async x => await Task.WhenAll(x));

        MasterTableOption? masterTableOption = option.TableListFile switch
        {
            null => null,
            not null => MasterTableOptionFile.Read(option.TableListFile),
        };

        IReadOnlyList<string> newHeaders = ProposeHeaders(files, option.MatchRange);
        StringTable table = BuildMergedTable(projectFile, newHeaders, files, option.MatchRange, masterTableOption);

        CreateDataDictionary(projectFile, option.TableName, table);
        if (masterTableOption != null) CreateAttributeMap(masterTableOption, projectFile);

        _logger.LogInformation("Completed project {file}", projectFile);
    }

    private Task<FileDetail> ReadFile(string projectFile, string file, MergeProjectOption option)
    {
        file = Path.IsPathFullyQualified(file) switch
        {
            true => file,
            false => Path.Combine(Path.GetDirectoryName(projectFile).NotNull(), file),
        };

        var result = new FileDetail
        {
            File = file,
            TableName = file.Split('=') switch
            {
                string[] v when v.Length == 1 => SqlObjectNameTool.ToSafeName(Path.GetFileNameWithoutExtension(file)),
                string[] v => v.First().Trim(),
            },
            Table = CsvFile.ReadDynamic(file, option.Delimiter ?? ",").Func(toSafeHeaders),
        };

        _logger.LogInformation("Reading {file}", file);
        return Task.FromResult(result);

        static StringTable toSafeHeaders(StringTable table) => new StringTable(true)
            + table.Header.Select(x => SqlObjectNameTool.ToSafeName(x))
            + table.Data;
    }

    private IReadOnlyList<string> ProposeHeaders(IReadOnlyList<FileDetail> files, int matchRange)
    {
        var equalityCompare = new Distance(matchRange);

        (int index, string header)[] headerList = files
            .SelectMany(x => x.Table
                .Header
                .Where(x => !x.IsEmpty())
                .OfType<string>()
                .Select((x, i) => (index: i, header: x))
                )
            .ToArray();

        string[] distinctHeaderList = headerList
            .Select(x => x.header)
            .Distinct(equalityCompare)
            .ToArray();

        (string header, int index)[] joined = headerList
            .Join(distinctHeaderList, x => x.header, x => x, (outter, inner) => outter)
            .GroupBy(x => x.header)
            .Select(x => (header: x.Key, index: x.Min(y => y.index)))
            .ToArray();

        string[] headers = joined
            .OrderBy(x => x.index)
            .Select(x => x.header)
            .ToArray();

        return headers;
    }

    private StringTable BuildMergedTable(string file, IReadOnlyList<string> newHeaders, IReadOnlyList<FileDetail> files, int matchRange, MasterTableOption? masterTableOption)
    {
        string fullFile = PathTool.SetFileExtension(file, ".mergedTableFull.csv");
        string mergedFile = PathTool.SetFileExtension(file, ".mergedTable.csv");

        return masterTableOption switch
        {
            null => noFilter(mergedFile),
            not null => filtered(),
        };

        StringTable noFilter(string file)
        {
            StringTable fullTable = newHeaders
                .SelectMany(columnName => files.Select(file => file.Table.GetColumnData(columnName)).OfType<StringColumn>())
                .ToTable();

            writeFile(file, fullTable);
            return fullTable;
        }

        StringTable filtered()
        {
            noFilter(fullFile);

            StringTable filteredTable = newHeaders
                .Where(x => masterTableOption.IsIncludeColumn(x))
                .Select(x => (columnName: x, mapToName: masterTableOption!.GetMapToName(x)))
                .SelectMany(x => files.Select(file => file.Table.GetColumnData(x.columnName, x.mapToName)).OfType<StringColumn>())
                .ToTable();

            writeFile(mergedFile, filteredTable);
            return filteredTable;
        }

        void writeFile(string file, StringTable table)
        {
            _logger.LogInformation("Writing file {file}", file);
            table.WriteToCsv(file);
        }
    }

    private void CreateDataDictionary(string projectFile, string tableName, StringTable table)
    {
        AnalysisResult? analysis = _dataAnalysis.Run(tableName, table, null, 100);
        if (analysis == null)
        {
            _logger.LogError("Analysis failed");
            return;
        }

        string file = PathTool.SetFileExtension(projectFile, ".datadictionary.csv");
        _logger.LogInformation("Writing data dictionary to {file}", file);

        new DataDictionary
        {
            Items = analysis.TableInfos.ToArray(),
        }.Write(file);
    }

    private void CreateAttributeMap(MasterTableOption masterTableOption, string projectFile)
    {
        var report = masterTableOption.GetDetails()
            .Select(x => new { TableName = x.TableName, ColumnName = x.ColumnName, MapToName = x.MapToName }.ToDynamic())
            .ToArray();

        string file = PathTool.SetFileExtension(projectFile, ".attributeMap.csv");
        CsvFile.Write(file, report);
    }


    private record FileDetail
    {
        public string File { get; init; } = null!;
        public string TableName { get; init; } = null!;
        public StringTable Table { get; init; } = null!;
    }

    private record MappedDetail
    {
        public string TableName { get; init; } = null!;
        public string ColumnName { get; init; } = null!;
        public string MapToName { get; init; } = null!;
    }
}
