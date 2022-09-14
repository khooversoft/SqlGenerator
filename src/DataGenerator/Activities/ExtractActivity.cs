using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Data;
using SqlGenerator.sdk.Excel;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace DataGenerator.Activities;

internal class ExtractActivity
{
    private readonly ExcelFile _readExcelSheet;
    private readonly DataAnalysis _dataAnalysis;
    private readonly ILogger<ExtractActivity> _logger;

    public ExtractActivity(ExcelFile readExcelSheet, DataAnalysis dataAnalysis, ILogger<ExtractActivity> logger)
    {
        _readExcelSheet = readExcelSheet.NotNull();
        _dataAnalysis = dataAnalysis.NotNull();
        _logger = logger.NotNull();
    }

    public Task Extract(string inputFile, string tableName, string? firstColumnText, int? minCharLength, string? delimiter)
    {
        _logger.LogInformation("Extracting inputFile={inputFile}, firstColumnText={firstColumnText}, delimiter={delimiter}", inputFile, firstColumnText, delimiter);

        StringTable? stringTable = ReadSheet(inputFile, delimiter);
        if (stringTable == null) return Task.CompletedTask;

        AnalysisResult? analysis = _dataAnalysis.Run(tableName, stringTable, firstColumnText, minCharLength ?? 50);
        if (analysis == null) return Task.CompletedTask;

        WriteTable(analysis, inputFile);
        WriteDataDictionary(analysis, inputFile);

        return Task.CompletedTask;
    }

    private StringTable? ReadSheet(string inputFile, string? delimiter)
    {
        StringTable stringTable = Path.GetExtension(inputFile).ToLower() switch
        {
            ".xlsx" => _readExcelSheet.Read(inputFile, 500),
            ".txt" => CsvFile.ReadDynamic(inputFile, delimiter),
            ".csv" => CsvFile.ReadDynamic(inputFile, delimiter),

            _ => throw new ArgumentException($"Unknown extension file={inputFile}"),
        };

        //StringTable stringTable = _readExcelSheet.Read(inputFile);
        if (stringTable.Count == 0)
        {
            _logger.LogError("No rows in spreadsheet, file={file}", inputFile);
            return null;
        }

        _logger.LogInformation("Read {rows} from {file}", stringTable.Count, inputFile);
        return stringTable;
    }

    private void WriteTable(AnalysisResult analysis, string inputFile)
    {
        string file = PathTool.SetFileExtension(inputFile, ".tableData.csv");
        _logger.LogInformation("Write extract data to {file}", file);
        analysis.Table.WriteToCsv(file);
    }

    private void WriteDataDictionary(AnalysisResult analysis, string inputFile)
    {
        string file = PathTool.SetFileExtension(inputFile, ".datadictionary.csv");
        _logger.LogInformation("Writing data dictionary to {file}", file);

        CsvFile.Write(file, analysis.TableInfos.Select(x => x.ConvertTo()));
    }
}
