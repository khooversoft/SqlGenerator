using DocumentFormat.OpenXml.Bibliography;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class ClassificationActivity
{
    private readonly ILogger<ClassificationActivity> _logger;

    public ClassificationActivity(ILogger<ClassificationActivity> logger) => _logger = logger.NotNull();

    public async Task<Counters> Classify(string sourceFile, string classificationOptionFile, string outputFile)
    {
        sourceFile.NotEmpty();
        classificationOptionFile.NotEmpty();
        outputFile.NotEmpty();

        outputFile = outputFile ?? sourceFile;
        using var ls = _logger.LogEntryExit();

        new
        {
            SourceFile = sourceFile,
            ClassificationOptionFile = classificationOptionFile,
            OutputFile = outputFile,
        }.LogProperties("Classification...", _logger);

        IReadOnlyList<TableInfo> tableInfos = CsvFile.Read(sourceFile);
        ClassificationOption classificationOption = await ClassificationOptionFile.ReadAsync(classificationOptionFile);

        List<TableInfoModel> classificated = tableInfos
            .Select(x => x with
            {
                PII = classificationOption.IsPII(x.TableName, x.ColumnName),
                Restricted = classificationOption.IsRestricted(x.TableName, x.ColumnName),
            })
            .Select(x => x.ConvertTo())
            .ToList();


        CsvFile.Write(outputFile, classificated);
        _logger.LogInformation("Completed writing output={outputFile}", outputFile);

        var counters = LogStats(classificated);
        return counters;
    }

    private Counters LogStats(IReadOnlyList<TableInfoModel> tableInfos) => new Counters(nameof(FilterSourceActivity))
    {
        ("Table count", tableInfos.GroupBy(x => x.TableName).Count()),
        ("PII count", tableInfos.Select(x => x.PII).Count()),
        ("Restricted count", tableInfos.Select(x => x.Restricted).Count()),
    };
}
