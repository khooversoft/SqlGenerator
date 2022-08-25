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
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project.Activities;

public class GenerateSqlCodeActivity
{
    private readonly ILogger<GenerateSqlCodeActivity> _logger;
    private readonly FileStoreBuilder _fileStoreBuilder;

    public GenerateSqlCodeActivity(FileStoreBuilder fileStoreBuilder, ILogger<GenerateSqlCodeActivity> logger)
    {
        _fileStoreBuilder = fileStoreBuilder.NotNull();
        _logger = logger.NotNull();
    }

    public async Task<Counters> Build(string modelFile, string modelFolder)
    {
        modelFile.NotEmpty();
        modelFolder.NotEmpty();

        _logger.LogInformation("Reading physical model {file} read", modelFile);

        var physicalModel = (await File.ReadAllTextAsync(modelFile))
                .ToObject<PhysicalModel>()
                .NotNull();

        Instructions instructions = new SqlInstructionBuilder(physicalModel).Build();
        InstructionObjects instructionObjects = new InstructionObjectBuilder().Build(instructions);

        _logger.LogInformation("Generating SQL code for tables and views for {model} to {folder}", modelFile, modelFolder);
        await _fileStoreBuilder.Build(instructionObjects, modelFolder);

        return new Counters(nameof(GenerateSqlCodeActivity))
        {
            ("SQL DLL/View count", instructionObjects.Items.Count()),
        }.Add(physicalModel.ToCounters());
    }
}
