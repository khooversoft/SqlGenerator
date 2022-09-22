using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class ModelActivity
{
    private readonly ILogger<ModelActivity> _logger;
    public ModelActivity(ILogger<ModelActivity> logger) => _logger = logger.NotNull();

    public Task<Counters> Build(string sourceFile, SchemaOption schemaOption, string outputFile, string? nameMapFile)
    {
        sourceFile.NotEmpty();
        schemaOption.NotNull();
        outputFile.NotEmpty();

        new
        {
            Source = sourceFile,
            Output = outputFile,
            NameMapFile = nameMapFile,
        }.LogProperties("Building model...", _logger);

        DataDictionary dataDictionary = DataDictionaryFile.Read(sourceFile);
        IReadOnlyList<NameMapRecord>? nameMaps = nameMapFile != null ? NameMapRecordFile.Read(nameMapFile) : null;

        var model = new PhysicalModelBuilder().Build(dataDictionary.Items, schemaOption, nameMaps);
        model.Write(outputFile);

        var counters = new Counters(nameof(ModelActivity))
        {
            ("Input table count", dataDictionary.Items.Select(x => x.TableName).Distinct().Distinct().Count()),
        }.Add(model.ToCounters());

        return Task.FromResult(counters);
    }
}
