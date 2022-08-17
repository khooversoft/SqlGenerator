using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Defaults;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Model;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Test;

public class GeneratorTests
{
    [Fact]
    public async Task GivenModel_WhenSerialized_WillRoundtrip()
    {
        string json = CreatePhysicalModel();
        PhysicalModel model = json.ToObject<PhysicalModel>().NotNull();

        ILoggerFactory loggerFactory = LoggerFactory.Create(factory =>
        {
            factory.AddDebug();
            factory.AddFilter(x => true);
        });

        Instructions instructions = new InstructionBuilder(model).Build();

        string baseFolder = Path.Combine(Path.GetTempPath(), nameof(GeneratorTests));
        var generator = new SqlScriptBuilder(loggerFactory.CreateLogger<SqlScriptBuilder>());

        await generator.Build(baseFolder, instructions);
    }

    private string CreatePhysicalModel()
    {
        const int viewCount = 5;
        const int columnCount = 5;
        const int tableCount = 3;
        Random rnd = new Random();

        var m1 = new PhysicalModel
        {
            Name = "test model",
            Schemas = new[]
            {
                new SchemaModel { Name = "general", Security = Security.Unrestricted },
                new SchemaModel { Name = "protected", Security = Security.Restricted},
                new SchemaModel { Name = "PII", Security = Security.PII},
            },
            Views = Enumerable.Range(0, viewCount)
                .Select(x => new ViewModel
                {
                    Name = new ObjectName
                    {
                        Schema = x switch
                        {
                            int v when v % 3 == 0 => "general",
                            int v when v % 3 == 1 => "protected",
                            int v when v % 3 == 2 => "PII",

                            _ => throw new InvalidOperationException(),
                        },
                        Name = $"View_{x}",
                        NamePrefix = "Vw_",
                    },
                    Table = new ObjectName
                    {
                        Schema = x switch
                        {
                            int v when v % 3 == 0 => "general",
                            int v when v % 3 == 1 => "protected",
                            int v when v % 3 == 2 => "PII",

                            _ => throw new InvalidOperationException(),
                        },
                        Name = $"Table_{x}",
                    },
                    Columns = Enumerable.Range(0, columnCount)
                        .Select(y => new ColumnModel
                        {
                            Name = $"Column_{y}",
                            Security = y switch
                            {
                                int v when v % 4 == 0 => Security.Unrestricted,
                                int v when v % 4 == 1 => Security.Unrestricted,
                                int v when v % 4 == 2 => Security.Restricted,
                                int v when v % 4 == 3 => Security.PII,

                                _ => throw new InvalidOperationException(),
                            },
                            HashKey = y == 0 ? true : false,
                        }).ToArray(),
                }).ToArray(),
            Tables = Enumerable.Range(0, tableCount)
                .Select(x => new TableModel
                {
                    Name = new ObjectName
                    {
                        Schema = x switch
                        {
                            int v when v % 3 == 0 => "general",
                            int v when v % 3 == 1 => "protected",
                            int v when v % 3 == 2 => "PII",

                            _ => throw new InvalidOperationException(),
                        },
                        Name = $"Table_{x}",
                    },
                    Columns = Enumerable.Range(0, columnCount)
                        .Select(y => new ColumnDefinitionModel
                        {
                            Name = $"ColumnDef_{y}",
                            Security = x switch
                            {
                                int v when v % 3 == 0 => Security.Unrestricted,
                                int v when v % 3 == 1 => Security.Restricted,
                                int v when v % 3 == 2 => Security.PII,

                                _ => throw new InvalidOperationException(),
                            },
                            DataType = y switch
                            {
                                int v when v % 3 == 0 => "datetime2(7)",
                                int v when v % 3 == 1 => "int",
                                int v when v % 3 == 2 => "char(1)",

                                _ => "varchar(10)",
                            },
                            NotNull = false,
                            HashKey = y == 0 ? true : false,
                        }).ToArray(),
                    HashColumn = "hashColumnName",
                }).ToArray(),

            PrefixColumns = NormalColumnDefaults.Prefix,
            SufixColumns = NormalColumnDefaults.Sufix,
        }.Verify();

        return m1.ToJson();
    }
}
