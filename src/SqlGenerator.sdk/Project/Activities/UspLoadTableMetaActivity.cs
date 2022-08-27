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

public class UspLoadTableMetaActivity
{
    private readonly FileStoreBuilder _fileStoreBuilder;
    private readonly ILogger<UspLoadTableMetaActivity> _logger;

    public UspLoadTableMetaActivity(FileStoreBuilder fileStoreBuilder, ILogger<UspLoadTableMetaActivity> logger)
    {
        _fileStoreBuilder = fileStoreBuilder.NotNull();
        _logger = logger.NotNull();
    }

    public async Task Build(string modelFile, string modelFolder, UspLoadTableOption uspLoadTableOption)
    {
        modelFile.NotEmpty();
        modelFolder.NotEmpty();
        uspLoadTableOption.Verify();

        _logger.LogInformation("Reading physical model {file} read", modelFile);
        var physicalModel = PhysicalModelFile.Read(modelFile);

        Instructions instructions = new UspLoadTableMetaBuilder(physicalModel).Build(uspLoadTableOption);
        InstructionObjects instructionObjects = new InstructionObjectBuilder().Build(instructions);

        _logger.LogInformation("Generating Usp Load Table Metadata {model} to {folder}", modelFile, modelFolder);
        await _fileStoreBuilder.Build(instructionObjects, modelFolder);
    }
}
