using FluentAssertions;
using FluentAssertions.Equivalency;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Import;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Test;

public class CsvImportTests
{
    [Fact]
    public void GivenSampleCsv_WhenImported_ShouldPass()
    {
        string baseFolder = GetBaseFolder();
        string file = WriteResourceFile("SqlGenerator.sdk.Test.TestData.SampleTables.csv", baseFolder, "SampleTables.csv");

        ImportOption option = WriteResourceFile("SqlGenerator.sdk.Test.TestData.ImportOption.json", baseFolder, "ImportOption.json")
            .Func(x => LoadOption(x));

        IReadOnlyList<TableInfo> infos = new ImportCsv().Read(file);
        infos.Should().NotBeNull();

        PhysicalModel physicalModel = new ModelBuilder().Build("Test Model", infos, option);
        physicalModel.Should().NotBeNull();
        physicalModel.PrefixColumns.Should().NotBeNull();
        physicalModel.PrefixColumns.Count.Should().Be(2);
        physicalModel.SufixColumns.Count.Should().Be(10);
        physicalModel.Tables.Should().NotBeNull();
        physicalModel.Tables.Count.Should().Be(3);
        physicalModel.Views.Should().NotBeNull();
        physicalModel.Views.Count.Should().Be(18);
    }

    [Fact]
    public async Task GivenSampleCsv_WhenGenerateSql_ShouldPass()
    {
        string baseFolder = GetBaseFolder();
        string file = WriteResourceFile("SqlGenerator.sdk.Test.TestData.SampleTables.csv", baseFolder, "SampleTables.csv");

        ImportOption option = WriteResourceFile("SqlGenerator.sdk.Test.TestData.ImportOption.json", baseFolder, "ImportOption.json")
            .Func(x => LoadOption(x));

        ILoggerFactory loggerFactory = LoggerFactory.Create(factory =>
        {
            factory.AddDebug();
            factory.AddFilter(x => true);
        });

        await new SqlGeneratorBuilder()
            .SetName("Test Model")
            .SetFile(file)
            .SetOption(option)
            .SetPublishFolder(baseFolder)
            .Build(loggerFactory);
    }

    private string WriteResourceFile(string id, string baseFolder, string file)
    {
        Stream stream = Assembly.GetAssembly(typeof(CsvImportTests))
            .NotNull(name: "Assembly cannot be loaded")!
            .GetManifestResourceStream(id)!
            .NotNull(name: $"Cannot find {id} resource");

        string filePath = Path.Combine(baseFolder, file);
        using var wr = new StreamWriter(filePath);
        stream.CopyTo(wr.BaseStream);

        return filePath;
    }

    private string GetBaseFolder()
    {
        string baseFolder = Path.Combine(Path.GetTempPath(), nameof(CsvImportTests));
        if (Directory.Exists(baseFolder)) Directory.Delete(baseFolder, true);
        Directory.CreateDirectory(baseFolder);

        return baseFolder;
    }

    private ImportOption LoadOption(string file) => new ConfigurationBuilder()
        .AddJsonFile(file)
        .Build()
        .Bind<ImportOption>();
}
