using SqlGenerator.sdk.Model;

namespace SqlGenerator.sdk.Test;

public class PhysicalModelSerializer
{
    [Fact]
    public void GivenModel_WhenSerialized_WillRoundtrip()
    {
        const int viewCount = 5;
        const int columnCount = 5;
        const int tableCount = 3;

        var physicalModel = new PhysicalModel
        {
            Name = "test model",
            Schemas = new[]
            {
                new SchemaModel { SchemaName = "general", Security = Security.Unrestricted },
                new SchemaModel { SchemaName = "protected", Security = Security.Restricted},
                new SchemaModel { SchemaName = "PII", Security = Security.PII},
            },
            Views = Enumerable.Range(0, viewCount)
                .Select(x => new ViewModel
                {
                    SchemaName = x switch
                    {
                        int v when v % 3 == 0 => "general",
                        int v when v % 3 == 1 => "protected",
                        int v when v % 3 == 2 => "PII",

                        _ => throw new InvalidOperationException(),
                    },
                    ViewName = $"View_{x}",
                    Columns = Enumerable.Range(0, columnCount)
                        .Select(y => new ColumnModel
                        {
                            ColumnName = $"Column_{y}",
                            Security = x switch
                            {
                                int v when v % 3 == 0 => Security.Unrestricted,
                                int v when v % 3 == 1 => Security.Restricted,
                                int v when v % 3 == 2 => Security.PII,

                                _ => throw new InvalidOperationException(),
                            },
                        }).ToArray(),
                }).ToArray(),
            Tables = Enumerable.Range(0, tableCount)
                .Select(x => new TableModel
                {
                    SchemaName = x switch
                    {
                        int v when v % 3 == 0 => "general",
                        int v when v % 3 == 1 => "protected",
                        int v when v % 3 == 2 => "PII",

                        _ => throw new InvalidOperationException(),
                    },
                    TableName = $"Table_{x}",
                    Columns = Enumerable.Range(0, columnCount)
                        .Select(y => new ColumnDefinition
                        {
                            ColumnName = $"Column_{y}",
                            Security = x switch
                            {
                                int v when v % 3 == 0 => Security.Unrestricted,
                                int v when v % 3 == 1 => Security.Restricted,
                                int v when v % 3 == 2 => Security.PII,

                                _ => throw new InvalidOperationException(),
                            },
                        }).ToArray(),
                }).ToArray(),
        };
    }
}