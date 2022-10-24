using CsvHelper;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Model;
using System.Globalization;
using Toolbox.Extensions;
using Toolbox.Tools;
using System;
using DataTools.sdk.Model;

namespace SqlGenerator.sdk.Generator;

public class PhysicalModelBuilder
{
    public PhysicalModel Build(IEnumerable<TableInfo> infos, SchemaOption schemaOption, IReadOnlyList<NameMapRecord>? nameMaps)
    {
        infos.NotNull();
        schemaOption.Verify();

        IReadOnlyList<TableInfo> tableInfos = infos.ToList();

        SchemaModel dataSchemaModel = schemaOption.Schemas
            .Where(x => x.Security.ForTable())
            .FirstOrDefault()
            .NotNull(name: $"Cannot find data schema in option");

        IReadOnlyList<TableModel> tableModels = GenerateTable(tableInfos, dataSchemaModel, nameMaps, schemaOption);

        return new PhysicalModel
        {
            Schemas = schemaOption.Schemas.ToArray(),
            Tables = tableModels,
            PrefixColumns = schemaOption.PrefixColumns.ToArray(),
            SuffixColumns = schemaOption.SufixColumns.ToArray(),
            Relationships = schemaOption.Relationships.ToArray(),
            LookupRelationships = schemaOption.LookupRelationships.ToArray(),
        }.Verify();
    }

    private static IReadOnlyList<TableModel> GenerateTable(IReadOnlyList<TableInfo> tableInfos, SchemaModel schemaModel, IReadOnlyList<NameMapRecord>? nameMaps, SchemaOption schemaOption)
    {
        return tableInfos
            .GroupBy(x => x.TableName)
            .Select(x => new TableModel
            {
                Name = new SqlObjectName { Schema = schemaModel.Name, Name = x.Key },
                IndexType = getIndexType(x.ToArray()),
                Columns = x.Select((y, i) => new ColumnModel
                {
                    Name = y.ColumnName,
                    Security = y.GetSecurity(),
                    DataType = y.DataType,
                    NotNull = y.NotNull,
                    PrimaryKey = y.PrimaryKey,
                    NonuniqueIndex = isNonuniqueIndex(schemaOption, x.Key, y.ColumnName),
                    PII = y.PII,
                    Restricted = y.Restricted,
                    ColumnIndex = i,
                    ShortName = nameMaps?.ShortName(y.ColumnName, schemaModel.MaxColumnSize),
                }).ToList(),
            }).ToList();


        static IndexType getIndexType(IReadOnlyList<TableInfo> tableInfos) =>
            tableInfos
            .Any(x => x.DataType.IndexOf("max", StringComparison.OrdinalIgnoreCase) >= 0) switch
            {
                false => IndexType.Hash,
                true => IndexType.Cluster
            };

        static bool isNonuniqueIndex(SchemaOption schemaOption, string tableName, string columnName) => schemaOption.Relationships
            .Any(x => x.TableName.Equals(tableName, StringComparison.OrdinalIgnoreCase) && x.ColumnName.Equals(columnName, StringComparison.OrdinalIgnoreCase));

    }
}
