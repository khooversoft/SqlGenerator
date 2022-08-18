using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Import;
using SqlGenerator.sdk.Model;
using SqlGenerator.sdk.Store;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class SqlGeneratorBuilder
{
    public ProjectOption ProjectOption { get; set; } = null!;
    public string PublishFolder { get; set; } = null!;

    public SqlGeneratorBuilder SetProjectOption(ProjectOption projectOption) => this.Action(x => x.ProjectOption = projectOption);
    public SqlGeneratorBuilder SetPublishFolder(string publishFolder) => this.Action(x => x.PublishFolder = publishFolder);

    public async Task Build(ILoggerFactory loggerFactory)
    {
        ProjectOption.Verify();
        PublishFolder.NotEmpty();
        loggerFactory.NotNull();
        ILogger<SqlGeneratorBuilder> logger = loggerFactory.CreateLogger<SqlGeneratorBuilder>();

        ImportOption importOption = ProjectOption.LoadOption();
        PhysicalModel physicalModel = ReadModel(importOption, logger);

        Instructions instructions = new InstructionBuilder(physicalModel).Build();

        await new SqlScriptBuilder(loggerFactory.CreateLogger<SqlScriptBuilder>()).Build(PublishFolder, instructions);
    }

    private PhysicalModel ReadModel(ImportOption option, ILogger logger)
    {
        bool isCsv = Path.GetExtension(ProjectOption.SourceFile).Equals(".csv", StringComparison.OrdinalIgnoreCase);

        return isCsv switch
        {
            false => File.ReadAllText(ProjectOption.SourceFile)
                .ToObject<PhysicalModel>()
                .NotNull()
                .Action(_ => logger.LogInformation("Physical model {file} read", ProjectOption.SourceFile)),

            true => createModel(),
        };

        PhysicalModel createModel()
        {
            var infos = new ImportCsv().Read(ProjectOption.SourceFile);
            var model = new ModelBuilder().Build(ProjectOption.Name, infos, option);
            writeModel(model);

            logger.LogInformation("Source {file} read", ProjectOption.SourceFile);
            return model;
        }

        void writeModel(PhysicalModel physicalModel)
        {
            string file = Path.Combine(PublishFolder, Path.ChangeExtension(option.Name, ".json"));
            File.WriteAllText(file, physicalModel.ToJsonFormat());
            logger.LogInformation("Created model file={file}", file);
        }
    }
}
