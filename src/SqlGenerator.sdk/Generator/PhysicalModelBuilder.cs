using CsvHelper;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Model;
using System.Globalization;
using Toolbox.Extensions;
using Toolbox.Tools;
using System;
using SqlGenerator.sdk.CsvStore;

namespace SqlGenerator.sdk.Generator;

public class PhysicalModelBuilder
{
    public PhysicalModel Build(IEnumerable<TableInfo> infos, ImportOption importOption)
    {
        infos.NotNull();
        importOption.NotNull();

        IReadOnlyList<TableInfo> tableInfos = infos.ToList();

        SchemaModel dataSchemaModel = importOption.Schemas
            .Where(x => x.Security.ForTable())
            .FirstOrDefault()
            .NotNull(name: $"Cannot find data schema in option");

        IReadOnlyList<TableModel> tableModels = GenerateTable(tableInfos, dataSchemaModel);

        IReadOnlyList<ViewModel> viewModels = importOption.Schemas
            .Where(x => x.Security.ForView())
            .SelectMany(x => GenerateView(tableInfos, importOption, x, dataSchemaModel))
            .ToList();

        return new PhysicalModel
        {
            Schemas = importOption.Schemas
                .Select(x => new SchemaModel { Name = x.Name, Security = x.Security })
                .ToList(),
            Tables = tableModels,
            Views = viewModels,
            PrefixColumns = importOption.PrefixColumns.ToList(),
            SuffixColumns = importOption.SufixColumns.ToList(),
        }.Verify();
    }

    private IReadOnlyList<TableModel> GenerateTable(IReadOnlyList<TableInfo> tableInfos, SchemaModel schemaModel)
    {
        return tableInfos
            .GroupBy(x => x.TableName)
            .Select(x => new TableModel
            {
                Name = new ObjectName { Schema = schemaModel.Name, Name = x.Key },
                Columns = x.Select((y, i) => new ColumnDefinitionModel
                {
                    Name = y.ColumnName,
                    Security = y.GetSecurity(),
                    DataType = y.DataType,
                    NotNull = y.NotNull,
                    HashKey = y.HashKey,
                    PrinaryKey = y.PrimaryKey,
                    ColumnIndex = i,
                }).ToList(),
            }).ToList();
    }

    private IReadOnlyList<ViewModel> GenerateView(IReadOnlyList<TableInfo> tableInfos, ImportOption importOption, SchemaModel schemaModel, SchemaModel dataSchemaModel)
    {
        return tableInfos
            .GroupBy(x => x.TableName)
            .Select(x => new ViewModel
            {
                Name = new ObjectName { Schema = schemaModel.Name, Name = formatName(x.Key) },
                Table = new ObjectName { Schema = dataSchemaModel.Name, Name = x.Key },
                Columns = x.Select(y => new ColumnModel
                {
                    Name = y.ColumnName,
                    Security = y.GetSecurity(),
                    HashKey = y.HashKey,
                    DisplayAs = y.ShortName,
                }).ToList(),
            }).ToList();

        string formatName(string tableName) => schemaModel.Format switch
        {
            null => tableName,
            string v => v.Replace("{tableName}", tableName),
        };
    }
}
