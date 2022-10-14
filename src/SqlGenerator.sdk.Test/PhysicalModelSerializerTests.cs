using DataTools.sdk.Model;
using FluentAssertions;
using SqlGenerator.sdk.Model;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Test;

public class PhysicalModelSerializerTests
{
    [Fact]
    public void GivenModel_WhenSerialized_WillRoundtrip()
    {
        const int columnCount = 5;
        const int tableCount = 3;
        Random rnd = new Random();

        var m1 = new PhysicalModel
        {
            Schemas = new[]
            {
                new SchemaModel { Name = "general", Security = Security.Unrestricted },
                new SchemaModel { Name = "protected", Security = Security.Restricted},
                new SchemaModel { Name = "PII", Security = Security.PII},
            },
            Tables = Enumerable.Range(0, tableCount)
                .Select(x => new TableModel
                {
                    Name = new SqlObjectName
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
                            NotNull = rnd.Next() % 3 == 0,
                        }).ToArray(),
                }).ToArray(),
        }.Verify();

        string json = m1.ToJson();

        PhysicalModel m2 = json.ToObject<PhysicalModel>().NotNull();

        (m1 == m2).Should().BeTrue();
    }
}