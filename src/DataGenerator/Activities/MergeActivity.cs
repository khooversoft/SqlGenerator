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
        MergeProjectOption option = MergeProjectOptionFile.Read(projectFile);
        option.Files.Count.Assert(x => x > 0, $"There are no files to merge / analysis in project file {projectFile}");

        _logger.LogInformation("Running merge for project {file}", projectFile);

        IReadOnlyList<FileDetail> files = await option.Files
            .Select(x => ReadFile(projectFile, x))
            .FuncAsync(async x => await Task.WhenAll(x));

        IReadOnlyList<string> newHeaders = ProposeHeaders(files, option.MatchRange);
        StringTable table = BuildMergedTable(projectFile, newHeaders, files, option.MatchRange);

        CreateDataDictionary(projectFile, option.TableName, table);
        CreateAttributeMap(projectFile, newHeaders, files, option.MatchRange);

        _logger.LogInformation("Completed project {file}", projectFile);
    }
    private Task<FileDetail> ReadFile(string projectFile, string file)
    {
        file = Path.IsPathFullyQualified(file) switch
        {
            true => file,
            false => Path.Combine(Path.GetDirectoryName(projectFile).NotNull(), file),
        };

        var result = new FileDetail
        {
            File = file,
            TableName = SqlObjectNameTool.ToSafeName(Path.GetFileNameWithoutExtension(file)),
            Table = CsvFile.ReadDynamic(file).Func(toSafeHeaders),
        };

        _logger.LogInformation("Reading {file}", file);
        return Task.FromResult(result);

        static StringTable toSafeHeaders(StringTable x) => new StringTable(true)
            + x.Header.Select(x => SqlObjectNameTool.ToSafeName(x))
            + x.Data;
    }

    private StringTable BuildMergedTable(string file, IReadOnlyList<string> newHeaders, IReadOnlyList<FileDetail> files, int matchRange)
    {
        var table = newHeaders
            .SelectMany(columnName => files.Select(file => file.Table.GetColumnData(columnName)).Where(x => x != null).OfType<StringColumn>())
            .ToTable();

        file = PathTool.SetFileExtension(file, ".mergedTable.csv");
        _logger.LogInformation("Writing merged file {file}", file);
        table.WriteToCsv(file);

        return table;
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
            File = file,
            Items = analysis.TableInfos.ToArray(),
        }.Write();
    }


    private void CreateAttributeMap(string projectFile, IReadOnlyList<string> newHeaders, IReadOnlyList<FileDetail> files, int matchRange)
    {
        var equalityComparer = new Distance(matchRange);

        var report = files
            .SelectMany(x => x.Table.Header.Select(y => (Table: x.TableName, Column: y ?? "*", Match: match(y))))
            .Select(x => new { Table = x.Table, Column = x.Column, Match = x.Match })
            .ToArray();

        string file = PathTool.SetFileExtension(projectFile, ".attributeMap.csv");
        CsvFile.Write(file, report);

        _logger.LogInformation("Writing attribute map to file {file}", file);

        string match(string? columnName)
        {
            if (columnName.IsEmpty()) return string.Empty;

            return newHeaders
                .Where(x => equalityComparer.Equals(columnName, x))
                .Join(",")
                .ToNullIfEmpty() ?? "<no match>";
        }
    }

    private IReadOnlyList<string> ProposeHeaders(IReadOnlyList<FileDetail> files, int matchRange)
    {
        var equalityCompare = new Distance(matchRange);

        IReadOnlyList<string> headerList = files
            .SelectMany(x => x.Table.Header.Select(x => SqlObjectNameTool.ToSafeName(x ?? string.Empty)))
            .ToArray();

        return headerList
            .Where(x => !x.IsEmpty())
            .Distinct(equalityCompare)
            .ToArray();
    }

    private record FileDetail
    {
        public string File { get; init; } = null!;
        public string TableName { get; init; } = null!;
        public StringTable Table { get; init; } = null!;
    }
}
