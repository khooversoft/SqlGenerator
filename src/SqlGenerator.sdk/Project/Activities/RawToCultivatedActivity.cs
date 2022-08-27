using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Model;
using SqlGenerator.sdk.Templates;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class RawToCultivatedActivity
{
    private readonly ILogger<RawToCultivatedActivity> _logger;
    public RawToCultivatedActivity(ILogger<RawToCultivatedActivity> logger) => _logger = logger.NotNull();

    public async Task Build(string modelFile, string modelFolder, RawToCultivatedOption rawToCultivatedOption)
    {
        modelFile.NotEmpty();
        modelFolder.NotEmpty();
        rawToCultivatedOption.Verify();

        _logger.LogInformation("Reading physical model {file} read", modelFile);
        var physicalModel = PhysicalModelFile.Read(modelFile);

        var page = new RawToCultivatedScript(physicalModel, rawToCultivatedOption.PipelineName, rawToCultivatedOption.ActivityName);
        string lines = page.TransformText();

        string file = Path.Combine(modelFolder, rawToCultivatedOption.OutputFile);
        Directory.CreateDirectory(Path.GetDirectoryName(file).NotNull());

        _logger.LogInformation("Writing RawToCultivated script to {file}", file);
        await File.WriteAllTextAsync(file, lines);
    }
}
