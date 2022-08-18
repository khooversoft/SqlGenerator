using CsvHelper;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Import;
using SqlGenerator.sdk.Model;
using System.Globalization;
using Toolbox.Extensions;
using Toolbox.Tools;
using System;

namespace SqlGenerator.sdk.Generator;

public class ModelBuilder
{
    public PhysicalModel Build(string name, IEnumerable<TableInfo> infos, ImportOption importOption)
    {
        name.NotEmpty();
        infos.NotNull();
        importOption.NotNull();

        // Filter table 
        IReadOnlyList<TableInfo> tableInfos = infos
            .Join(importOption.MasterTables, x => x.TableName, x => x, (x, _) => x, StringComparer.OrdinalIgnoreCase)
            .ToList();

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
            Name = name,
            Schemas = importOption.Schemas
                .Select(x => new SchemaModel { Name = x.Name, Security = x.Security })
                .ToList(),
            Tables = tableModels,
            Views = viewModels,
            PrefixColumns = importOption.PrefixColumns.ToList(),
            SufixColumns = importOption.SufixColumns.ToList(),
        }.Verify();
    }

    private IReadOnlyList<TableModel> GenerateTable(IReadOnlyList<TableInfo> tableInfos, SchemaModel schemaModel)
    {
        return tableInfos
            .GroupBy(x => x.TableName)
            .Select(x => new TableModel
            {
                Name = new ObjectName { Schema = schemaModel.Name, Name = x.Key },
                HashColumn = x.FirstOrDefault(y => y.HashKey)?.ColumnName,
                Columns = x.Select(y => new ColumnDefinitionModel
                {
                    Name = y.ColumnName,
                    Security = y.GetSecurity(),
                    DataType = y.DataType,
                    NotNull = y.NotNull,
                    HashKey = y.HashKey,
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
                    DisplayAs = sizeName(y.ColumnName),
                }).ToList(),
            }).ToList();

        string formatName(string tableName) => schemaModel.Format switch
        {
            null => tableName,
            string v => v.Replace("{tableName}", tableName),
        };

        string? sizeName(string columnName) => schemaModel.MaxColumnSize switch
        {
            null => null,
            int v when columnName.Length <= v => null,

            int v => importOption.NameMaps
                        .Where(x => columnName.IndexOf(x.Long) >= 0)
                        .FirstOrDefault() switch
            {
                null => string.Concat(columnName.AsSpan(0, v - 1), "_"),
                NameMapRecord r => columnName.Replace(r.Long, r.Short) switch
                {
                    string v1 when v1.Length <= schemaModel.MaxColumnSize => v1,
                    string v1 => string.Concat(v1.AsSpan(0, v - 1), "_"),
                }
            },
        };
    }
}
