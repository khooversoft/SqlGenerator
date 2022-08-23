//using Microsoft.Extensions.Logging;
//using SqlGenerator.sdk.Application;
//using SqlGenerator.sdk.CsvStore;
//using SqlGenerator.sdk.Model;
//using Toolbox.Extensions;
//using Toolbox.Tools;

//namespace SqlGenerator.sdk.Generator;

//public class SqlGeneratorBuilder
//{
//    public string ProjectOptionFile { get; set; } = null!;
//    public string PublishFolder { get; set; } = null!;

//    public SqlGeneratorBuilder SetProjectFile(string projectOptionFile) => this.Action(x => x.ProjectOptionFile = projectOptionFile);
//    public SqlGeneratorBuilder SetPublishFolder(string publishFolder) => this.Action(x => x.PublishFolder = publishFolder);

//    public async Task Build(ILoggerFactory loggerFactory)
//    {
//        ProjectOptionFile.NotEmpty();
//        PublishFolder.NotEmpty();
//        loggerFactory.NotNull();
//        ILogger<SqlGeneratorBuilder> logger = loggerFactory.CreateLogger<SqlGeneratorBuilder>();

//        ProjectOption projectOption = ProjectOptionBuilder.Read(ProjectOptionFile);
//        ImportOption importOption = projectOption.GetImportOption(logger);
//        PhysicalModel physicalModel = await ReadModel(projectOption, importOption, logger);

//        Instructions instructions = new SqlInstructionBuilder(physicalModel).Build();
//        InstructionObjects instructionObjects = new InstructionObjectBuilder().Build(instructions);

//        await new FileStoreBuilder(loggerFactory.CreateLogger<FileStoreBuilder>()).Build(instructionObjects, PublishFolder);
//    }

//    private async Task<PhysicalModel> ReadModel(ProjectOption projectOption, ImportOption option, ILogger logger)
//    {
//        bool isCsv = Path.GetExtension(projectOption.SourceFile).Equals(".csv", StringComparison.OrdinalIgnoreCase);

//        return isCsv switch
//        {
//            false => (await File.ReadAllTextAsync(projectOption.SourceFile))
//                .ToObject<PhysicalModel>()
//                .NotNull()
//                .Action(_ => logger.LogInformation("Physical model {file} read", projectOption.SourceFile)),

//            true => await createModel(),
//        };

//        async Task<PhysicalModel> createModel()
//        {
//            var infos = CsvFile.Read(projectOption.SourceFile);
//            var model = new PhysicalModelBuilder().Build(projectOption.Name, infos, option);
//            await writeModel(model);

//            logger.LogInformation("Source {file} read", projectOption.SourceFile);
//            return model;
//        }

//        async Task writeModel(PhysicalModel physicalModel)
//        {
//            string fileName = option.Name.Replace(' ', '_') + "_PhysicalModel.json";
//            string file = Path.Combine(PublishFolder, fileName);
//            await File.WriteAllTextAsync(file, physicalModel.ToJsonFormat());
//            logger.LogInformation("Created model file={file}", file);
//        }
//    }
//}
