using FluentAssertions;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Logging.Abstractions;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Model;
using SqlGenerator.sdk.Project;
using System.Reflection;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Test;

public class BuildTests
{
    [Fact]
    public async Task GivenSampleCsv_WhenBuild_ShouldPass()
    {
        (string baseFolder, string projectFile) = BuildTempFolder();
        ProjectOption projectOption = ProjectOptionBuilder.Read(projectFile);

        projectOption = projectOption with
        {
            MasterFile = Path.Combine(baseFolder, "master.csv"),
        };

        ProjectBuilder builder = new ServiceCollection()
            .AddProjectBuild()
            .AddLogging(x => x.AddDebug().AddFilter(x => true))
            .BuildServiceProvider()
            .GetRequiredService<ProjectBuilder>();

        Context context = await builder.Build(projectOption, false);

        context.SourceFile.Exists().Should().BeTrue();
        context.FilterFile.Exists().Should().BeTrue();
        context.ShortNameFile.Exists().Should().BeTrue();
        context.ModelFile.Exists().Should().BeTrue();
        File.Exists(projectOption.MasterFile).Should().BeTrue();

        Directory.Exists(context.BuildFolder).Should().BeTrue();
        Directory.Exists(context.ModelFolder).Should().BeTrue();

        string[] files = Directory.GetFiles(context.BuildFolder, "*.*", SearchOption.AllDirectories);

        var expectedFiles = new[]
        {
            "SampleTables.filtered.csv",
            "SampleTables.model.json",
            "SampleTables.shortName.csv",
            "model\\Schema\\clt_NetO.sql",
            "model\\Schema\\NetO.sql",
            "model\\Schema\\NetO_pii.sql",
            "model\\Schema\\NetO_restricted.sql",
            "model\\clt_NetO\\Tables\\Table1.sql",
            "model\\clt_NetO\\Tables\\Table2.sql",
            "model\\clt_NetO\\Tables\\Table3.sql",
            "model\\NetO\\Views\\Vw_sas_Table1.sql",
            "model\\NetO\\Views\\Vw_sas_Table2.sql",
            "model\\NetO\\Views\\Vw_sas_Table3.sql",
            "model\\NetO\\Views\\Vw_Table1.sql",
            "model\\NetO\\Views\\Vw_Table2.sql",
            "model\\NetO\\Views\\Vw_Table3.sql",
            "model\\NetO_pii\\Views\\Vw_sas_Table1.sql",
            "model\\NetO_pii\\Views\\Vw_sas_Table2.sql",
            "model\\NetO_pii\\Views\\Vw_sas_Table3.sql",
            "model\\NetO_pii\\Views\\Vw_Table1.sql",
            "model\\NetO_pii\\Views\\Vw_Table2.sql",
            "model\\NetO_pii\\Views\\Vw_Table3.sql",
            "model\\NetO_restricted\\Views\\Vw_sas_Table1.sql",
            "model\\NetO_restricted\\Views\\Vw_sas_Table2.sql",
            "model\\NetO_restricted\\Views\\Vw_sas_Table3.sql",
            "model\\NetO_restricted\\Views\\Vw_Table1.sql",
            "model\\NetO_restricted\\Views\\Vw_Table2.sql",
            "model\\NetO_restricted\\Views\\Vw_Table3.sql"
        };

        files.Length.Should().Be(expectedFiles.Length);
        files.All(x => expectedFiles.Any(y => x.EndsWith(y))).Should().BeTrue();
    }

    private string GetBaseFolder()
    {
        string baseFolder = Path.Combine(Path.GetTempPath(), nameof(BuildTests));
        if (Directory.Exists(baseFolder)) Directory.Delete(baseFolder, true);
        Directory.CreateDirectory(baseFolder);

        return baseFolder;
    }

    public (string BaseFolder, string ProjectFolder) BuildTempFolder()
    {
        string baseFolder = GetBaseFolder();

        WriteResourceFile("SqlGenerator.sdk.Test.TestData.ImportOption.json", baseFolder, "ImportOption.json");

        WriteResourceFile("SqlGenerator.sdk.Test.TestData.SampleTables.csv", baseFolder, "SampleTables.csv");
        WriteResourceFile("SqlGenerator.sdk.Test.TestData.TableList.json", baseFolder, "TableList.json");
        WriteResourceFile("SqlGenerator.sdk.Test.TestData.NameMap.json", baseFolder, "NameMap.json");

        string projectFile = WriteResourceFile("SqlGenerator.sdk.Test.TestData.Project.json", baseFolder, "Project.json");
        return (baseFolder, projectFile);
    }

    private string WriteResourceFile(string id, string baseFolder, string file)
    {
        Stream stream = Assembly.GetAssembly(typeof(BuildTests))
            .NotNull(name: "Assembly cannot be loaded")!
            .GetManifestResourceStream(id)!
            .NotNull(name: $"Cannot find {id} resource");

        string filePath = Path.Combine(baseFolder, file);
        using var wr = new StreamWriter(filePath);
        stream.CopyTo(wr.BaseStream);

        return filePath;
    }
}
