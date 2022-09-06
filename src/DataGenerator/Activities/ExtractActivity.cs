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
    private readonly ILogger<ExtractActivity> _logger;
    public ExtractActivity(ExcelFile readExcelSheet, ILogger<ExtractActivity> logger)
    {
        _readExcelSheet = readExcelSheet.NotNull();
        _logger = logger.NotNull();
    }

    public Task Extract(string inputFile, string outputFile, string tableName, string? firstColumnText, int? minCharLength)
    {
        _logger.LogInformation(
            "Extracting inputFile={inputFile}, outputFile={outputFile}, firstColumnText={firstColumnText}",
            inputFile,
            outputFile,
            firstColumnText
            );

        StringTable? stringTable = ReadSheet(inputFile);
        if (stringTable == null) return Task.CompletedTask;

        AnalysisResult? analysis = RunAnalysis(tableName, stringTable, firstColumnText, minCharLength ?? 50);
        if (analysis == null) return Task.CompletedTask;

        WriteTable(analysis, outputFile);
        WriteDataDictionary(analysis, outputFile);

        return Task.CompletedTask;
    }

    private StringTable? ReadSheet(string inputFile)
    {
        StringTable stringTable = _readExcelSheet.Read(inputFile);
        if (stringTable.Count == 0)
        {
            _logger.LogError("No rows in spreadsheet, file={file}", inputFile);
            return null;
        }

        _logger.LogInformation("Read {rows} from {file}", stringTable.Count, inputFile);
        return stringTable;
    }

    private AnalysisResult? RunAnalysis(string tableName, StringTable stringTable, string? firstColumnText, int minCharLength)
    {
        AnalysisResult analysis = new DataAnalysis().Run(tableName, stringTable, firstColumnText, minCharLength);
        if (analysis.NoData)
        {
            _logger.LogError("No data detected");
            return null;
        }

        analysis.LogProperties("Analysis result...", _logger);

        return analysis;
    }

    private void WriteTable(AnalysisResult analysis, string outputFile)
    {
        _logger.LogInformation("Write extract data to {file}", outputFile);
        analysis.Table.WriteToCsv(outputFile);
    }

    private void WriteDataDictionary(AnalysisResult analysis, string outputFile)
    {
        string file = PathTool.SetFileExtension(outputFile, ".datadictionary.csv");
        _logger.LogInformation("Writing data dictionary to {file}", file);

        CsvFile.Write(file, analysis.TableInfos.Select(x => x.ConvertTo()));
    }
}
