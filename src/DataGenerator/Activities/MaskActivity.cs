using DataGenerator.Application;
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

public class MaskActivity
{
    private readonly ILogger<MaskActivity> _logger;
    public MaskActivity(ILogger<MaskActivity> logger) => _logger = logger.NotNull();

    public async Task Mask(string inputFile, string outputFile, string maskFile)
    {
        inputFile.NotEmpty().Assert(x => File.Exists(x), x => $"File {x} does not exist");
        outputFile.NotEmpty();
        maskFile.NotNull().Assert(x => File.Exists(x), x => $"File {x} does not exist");

        _logger.LogInformation("Masking file={inputFile}, outputFile={outputFile}, maskOptionFile={maskOptionFile}", inputFile, outputFile, maskFile);

        MaskOption maskOption = (await File.ReadAllTextAsync(maskFile))
            .ToObject<MaskOption>()
            .NotNull();

        MaskTable(inputFile, outputFile, maskOption);
    }

    public void MaskTable(string inputFile, string outputFile, MaskOption maskOption)
    {
        _logger.LogInformation("Reading CSV {file}", inputFile);
        StringTable csvTable = CsvFile.ReadTable(inputFile);

        maskOption
            .ColumnsToMask
            .Where(x => !csvTable.Header.Contains(x, StringComparer.OrdinalIgnoreCase))
            .Join(", ")
            .Assert(x => x.IsEmpty(), x => $"Missing columns from mask file, {x}");

        List<int> maskedIndexes = csvTable.Header
            .Select((x, i) => (HeaderName: x, Index: i))
            .Join(maskOption.ColumnsToMask, x => x.HeaderName, x => x, (o, _) => o)
            .Select(x => x.Index)
            .ToList();

        if (maskOption.ColumnsToMask.Count != maskedIndexes.Count)
        {
            string msg = $"Masked column count={maskOption.ColumnsToMask.Count} does not match masked index column count={maskedIndexes.Count}";
            throw new InvalidOperationException(msg);
        }

        var filteredTable = new StringTable(true)
            + csvTable.Header
            + csvTable.Data
                .Select(x => Mask(x, maskedIndexes))
                .ToList();

        _logger.LogInformation("Writing {file} with masked data", outputFile);
        filteredTable.WriteToCsv(outputFile);
    }

    private StringRow Mask(StringRow csvRow, List<int> maskedIndex) => new StringRow() + csvRow
        .Select((x, i) => maskedIndex.Contains(i) ? x.ToHashHex() : x)
        .ToList();
}
