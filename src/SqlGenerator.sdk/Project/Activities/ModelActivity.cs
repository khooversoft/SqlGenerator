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
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class ModelActivity
{
    private readonly ILogger<ModelActivity> _logger;

    public ModelActivity(ILogger<ModelActivity> logger) => _logger = logger.NotNull();

    public async Task<Counters> Build(string sourceFile, ImportOption importOption, string outputFile)
    {
        sourceFile.NotEmpty();
        importOption.NotNull();
        outputFile.NotEmpty();

        _logger.LogInformation("Creating model {outputFile} for {sourceFile}", outputFile, sourceFile);

        var infos = CsvFile.Read(sourceFile);
        var model = new PhysicalModelBuilder().Build(infos, importOption);

        await File.WriteAllTextAsync(outputFile, model.ToJsonFormat());

        return new Counters(nameof(ModelActivity))
        {
            ("Input table count", infos.Select(x => x.TableName).Distinct().Distinct().Count()),
        }.Add(model.ToCounters());
    }
}
