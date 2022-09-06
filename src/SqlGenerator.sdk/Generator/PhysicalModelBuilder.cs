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
    public PhysicalModel Build(IEnumerable<TableInfo> infos, SchemaOption schemaOption, IReadOnlyList<NameMapRecord> nameMaps)
    {
        infos.NotNull();
        schemaOption.Verify();
        nameMaps.NotNull();

        IReadOnlyList<TableInfo> tableInfos = infos.ToList();

        SchemaModel dataSchemaModel = schemaOption.Schemas
            .Where(x => x.Security.ForTable())
            .FirstOrDefault()
            .NotNull(name: $"Cannot find data schema in option");

        IReadOnlyList<TableModel> tableModels = GenerateTable(tableInfos, dataSchemaModel, nameMaps);

        return new PhysicalModel
        {
            Schemas = schemaOption.Schemas
                .Select(x => new SchemaModel { Name = x.Name, Security = x.Security })
                .ToList(),
            Tables = tableModels,
            PrefixColumns = schemaOption.PrefixColumns.ToList(),
            SuffixColumns = schemaOption.SufixColumns.ToList(),
        }.Verify();
    }

    private static IReadOnlyList<TableModel> GenerateTable(IReadOnlyList<TableInfo> tableInfos, SchemaModel schemaModel, IReadOnlyList<NameMapRecord> nameMaps)
    {
        return tableInfos
            .GroupBy(x => x.TableName)
            .Select(x => new TableModel
            {
                Name = new ObjectName { Schema = schemaModel.Name, Name = x.Key },
                IndexType = getIndexType(x.ToArray()),
                Columns = x.Select((y, i) => new ColumnModel
                {
                    Name = y.ColumnName,
                    Security = y.GetSecurity(),
                    DataType = y.DataType,
                    NotNull = y.NotNull,
                    PrimaryKey = y.PrimaryKey,
                    PII = y.PII,
                    Restricted = y.Restricted,
                    ColumnIndex = i,
                    ShortName = nameMaps.ShortName(y.ColumnName, schemaModel.MaxColumnSize),
                }).ToList(),
            }).ToList();


        static IndexType getIndexType(IReadOnlyList<TableInfo> tableInfos) =>
            tableInfos
            .Any(x => x.DataType.IndexOf("max", StringComparison.OrdinalIgnoreCase) >= 0) switch
            {
                false => IndexType.Hash,
                true => IndexType.Cluster
            };
    }
}
