using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.Activities;

internal class TemplateActivity
{
    public async Task Generate(string schemaFile)
    {
        schemaFile.NotEmpty();

        const int columnCount = 2;
        const int tableCount = 1;

        var m1 = new PhysicalModel
        {
            Name = "model name",
            Schemas = new[]
            {
                new SchemaModel { Name = "general", Security = Security.Unrestricted },
                new SchemaModel { Name = "protected", Security = Security.Restricted},
                new SchemaModel { Name = "PII", Security = Security.PII},
            },
            Views = Enumerable.Range(0, tableCount)
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
                            Security = x switch
                            {
                                int v when v % 3 == 0 => Security.Unrestricted,
                                int v when v % 3 == 1 => Security.Restricted,
                                int v when v % 3 == 2 => Security.PII,

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
                            HashKey = true,
                            NotNull = false,
                        }).ToArray(),
                }).ToArray(),
        }.Verify();

        string json = m1.ToJsonFormat();

        await File.WriteAllTextAsync(schemaFile, json);
    }
}
