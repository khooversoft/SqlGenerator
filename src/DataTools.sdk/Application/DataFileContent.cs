using DataGenerator.Application;
using DataTools.sdk.Model;
using DataTools.sdk.Storage;
using Microsoft.Extensions.Logging;
using System.Runtime.CompilerServices;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataGenerator.Activities;

public record DataFileContent
{
    public string File { get; init; } = null!;
    public string TableName { get; init; } = null!;
    public StringTable Table { get; init; } = null!;
}


public static class DataFile
{
    public static async Task<IReadOnlyList<DataFileContent>> ReadFiles(string referenceFile, MergeProjectOption option, ILogger logger)
    {
        referenceFile.NotEmpty();
        option.NotNull();
        logger.NotNull();

        IReadOnlyList<DataFileContent> files = await option.Files
            .Select(x => Task.Run(() => ReadFile(PathTool.ToFullPath(referenceFile, x).NotEmpty(), option.Delimiter, logger)))
            .FuncAsync(async x => await Task.WhenAll(x));

        return files;
    }

    public static Task<DataFileContent> ReadFile(string file, string? delimiter, ILogger logger)
    {
        (string tableName, string filePath) = file.Split('=', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries) switch
        {
            string[] v when v.Length == 1 => (tableName: SqlObjectNameTool.ToSafeName(Path.GetFileNameWithoutExtension(v[0])), filePath: v[0]),
            string[] v when v.Length == 2 => (tableName: v[0], filePath: v[1]),
            _ => throw new ArgumentException($"Syntax error: {file}"),
        };

        logger.LogInformation("Reading data file {file} for table {table}", filePath, tableName);

        var result = new DataFileContent
        {
            File = filePath,
            TableName = tableName,
            Table = CsvFile.ReadDynamic(filePath, delimiter ?? ",").Func(toSafeHeaders),
        };

        logger.LogInformation("Finished data file {file} for table {table}, rows={rows}", filePath, tableName, result.Table.Data.Count);

        return Task.FromResult(result);
    }

    static private StringTable toSafeHeaders(StringTable table) => new StringTable(true)
        + table.Header.Select(x => SqlObjectNameTool.ToSafeName(x))
        + table.Data;
}