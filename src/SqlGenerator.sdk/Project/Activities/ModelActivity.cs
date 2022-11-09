using DataTools.sdk.Model;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
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

    public Task Build(string sourceFile, SqlProjectOption projectOption, string outputFile)
    {
        sourceFile.NotEmpty();
        outputFile.NotEmpty();

        new
        {
            Source = sourceFile,
            Output = outputFile,
        }.LogProperties("Building model...", _logger);

        DataDictionary dataDictionary = DataDictionaryFile.Read(sourceFile);
        dataDictionary = dataDictionary with
        {
            Items = dataDictionary.Items.Where(x => !x.Excluded).ToArray(),
        };

        IReadOnlyList<TableTypeMetadata>? tableMetadata = projectOption.TableTypeMetadata != null ? TableTypeMetadataFile.Read(projectOption.TableTypeMetadata) : null;

        var model = new PhysicalModelBuilder().Build(dataDictionary.Items, projectOption, tableMetadata);
        model.Write(outputFile);

        return Task.CompletedTask;
    }
}
