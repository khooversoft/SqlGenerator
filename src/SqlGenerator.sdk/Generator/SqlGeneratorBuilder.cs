using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Import;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class SqlGeneratorBuilder
{
    public string? Name { get; set; }
    public string? SourceFile { get; set; }
    public ImportOption? Option { get; set; }
    public string? PublishFolder { get; set; }

    public SqlGeneratorBuilder SetName(string name) => this.Action(x => x.Name = name);
    public SqlGeneratorBuilder SetFile(string file) => this.Action(x => x.SourceFile = file);
    public SqlGeneratorBuilder SetOption(ImportOption option) => this.Action(x => x.Option = option);
    public SqlGeneratorBuilder SetPublishFolder(string publishFolder) => this.Action(x => x.PublishFolder = publishFolder);

    public async Task Build(ILoggerFactory loggerFactory)
    {
        Name.NotEmpty();
        SourceFile.NotEmpty();
        Option.Verify();
        PublishFolder.NotEmpty();
        loggerFactory.NotNull();
        ILogger<SqlGeneratorBuilder> logger = loggerFactory.CreateLogger<SqlGeneratorBuilder>();

        bool IsCsvFile = Path.GetExtension(SourceFile).Equals(".csv", StringComparison.OrdinalIgnoreCase);
        string modelFile = Path.Combine(PublishFolder, Path.GetFileNameWithoutExtension(SourceFile) + ".json");

        Directory.CreateDirectory(PublishFolder);
        PhysicalModel physicalModel;

        if (IsCsvFile)
        {
            logger.LogInformation("Reading CSV file={file}", SourceFile);

            IReadOnlyList<TableInfo> infos = new ImportCsv().Read(SourceFile);
            physicalModel = new ModelBuilder().Build(Name, infos, Option!);
        }
        else
        {
            logger.LogInformation("Reading model file={file}", modelFile);

            physicalModel = File.ReadAllText(SourceFile)
                .ToObject<PhysicalModel>()
                .NotNull();
        }

        Instructions instructions = new InstructionBuilder(physicalModel).Build();

        await new SqlScriptBuilder(loggerFactory.CreateLogger<SqlScriptBuilder>()).Build(PublishFolder, instructions);

        if (IsCsvFile)
        {
            File.WriteAllText(modelFile, physicalModel.ToJsonFormat());
            logger.LogInformation("Created model file={file}", modelFile);
        }
    }
}
