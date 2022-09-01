using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Excel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataGenerator.Activities;

internal class ExtractActivity
{
    private readonly ReadExcelSheet _readExcelSheet;
    private readonly ILogger<ExtractActivity> _logger;
    public ExtractActivity(ReadExcelSheet readExcelSheet, ILogger<ExtractActivity> logger)
    {
        _readExcelSheet = readExcelSheet.NotNull();
        _logger = logger.NotNull();
    }

    public Task Extract(string inputFile, string outputFile, string? firstColumnText)
    {
        _logger.LogInformation(
            "Extracting inputFile={inputFile},outputFile={outputFile}, firstColumnText={firstColumnText}",
            inputFile,
            outputFile,
            firstColumnText
            );

        ExcelData excelData = _readExcelSheet.Read(inputFile);
        if (excelData.Rows.Count == 0)
        {
            _logger.LogError("No rows in spreadsheet, file={file}", inputFile);
            return Task.CompletedTask;
        }

        var analysis = new ExcelDataAnalysis().Run(excelData.Rows, firstColumnText);

        return Task.CompletedTask;
    }
}
