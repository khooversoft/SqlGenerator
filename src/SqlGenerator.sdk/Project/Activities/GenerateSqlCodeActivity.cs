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
    private readonly FileSingleBuilder _fileSingleBuilder;

    public GenerateSqlCodeActivity(FileStoreBuilder fileStoreBuilder, FileSingleBuilder fileSingleBuilder, ILogger<GenerateSqlCodeActivity> logger)
    {
        _fileStoreBuilder = fileStoreBuilder.NotNull();
        _fileSingleBuilder = fileSingleBuilder.NotNull();
        _logger = logger.NotNull();
    }

    public async Task Build(string modelFile, string modelFolder, SqlProjectOption option)
    {
        modelFile.NotEmpty();
        modelFolder.NotEmpty();
        option.NotNull();

        _logger.LogInformation("Reading physical model {file} read", modelFile);

        PhysicalModel physicalModel = PhysicalModelFile.Read(modelFile);

        await GenerateForSqlProject(physicalModel, modelFile, modelFolder, option);
        await GenerateSingleBuildFile(physicalModel, modelFile, modelFolder, option);
    }

    private async Task GenerateForSqlProject(PhysicalModel physicalModel, string modelFile, string modelFolder, SqlProjectOption option)
    {
        Instructions instructions = new SqlInstructionBuilder(physicalModel, option).Build(BuildType.SchemaOnly);
        InstructionObjects instructionObjects = new InstructionObjectBuilder().Build(instructions);

        _logger.LogInformation("Generating SQL code for tables and views for {model} to {folder}", modelFile, modelFolder);
        await _fileStoreBuilder.Build(instructionObjects, modelFolder);
    }

    private async Task GenerateSingleBuildFile(PhysicalModel physicalModel, string modelFile, string modelFolder, SqlProjectOption option)
    {
        Instructions instructions = new SqlInstructionBuilder(physicalModel, option).Build(BuildType.Overwrite);
        InstructionObjects instructionObjects = new InstructionObjectBuilder().Build(instructions);

        string outputFile = Path.Combine(modelFolder, Path.GetFileNameWithoutExtension(modelFile) + "_full.sql");
        _logger.LogInformation("Generating single SQL code for all tables and views for {model} to {outputFile}", modelFile, outputFile);

        await _fileSingleBuilder.Build(instructionObjects, outputFile);
    }
}
