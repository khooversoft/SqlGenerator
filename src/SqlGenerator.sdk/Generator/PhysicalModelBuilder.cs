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
    public PhysicalModel Build(
        IReadOnlyList<TableInfo> infos,
        SqlProjectOption projectOption,
        IReadOnlyList<TableTypeMetadata>? tableMetadata
        )
    {
        infos.NotNull();
        projectOption.Verify();

        IReadOnlyList<TableInfo> tableInfos = infos.ToList();

        SchemaModel dataSchemaModel = projectOption.Schemas
            .Where(x => x.Security.ForTable())
            .FirstOrDefault()
            .NotNull(name: $"Cannot find data schema in option");

        IReadOnlyList<TableModel> tableModels = GenerateTable(tableInfos, dataSchemaModel, projectOption, tableMetadata);

        return new PhysicalModel
        {
            Schemas = projectOption.Schemas.ToArray(),
            Tables = tableModels,
            PrefixColumns = projectOption.PrefixColumns.ToArray(),
            SuffixColumns = projectOption.SufixColumns.ToArray(),
            Relationships = projectOption.Relationships.ToArray(),
            LookupRelationships = projectOption.LookupRelationships.ToArray(),
        }.Verify();
    }

    private static IReadOnlyList<TableModel> GenerateTable(
        IReadOnlyList<TableInfo> tableInfos,
        SchemaModel schemaModel,
        SqlProjectOption projectOption,
        IReadOnlyList<TableTypeMetadata>? tableMetadata
        )
    {
        return tableInfos
            .GroupBy(x => x.TableName)
            .Select(x => new TableModel
            {
                Name = new SqlObjectName { Schema = schemaModel.Name, Name = x.Key },
                IndexType = getIndexType(x.ToArray()),
                TableMode = getTableMode(x.Key, tableMetadata),
                Columns = x.Select((y, i) => new ColumnModel
                {
                    Name = y.ColumnName,
                    Security = y.GetSecurity(),
                    DataType = y.DataType,
                    NotNull = y.NotNull,
                    PrimaryKey = y.PrimaryKey,
                    NonuniqueIndex = isNonuniqueIndex(projectOption, x.Key, y.ColumnName),
                    PII = y.PII,
                    Restricted = y.Restricted,
                    ColumnIndex = i,
                }).ToList(),
            }).ToList();
    }

    static IndexType getIndexType(IReadOnlyList<TableInfo> tableInfos) =>
        tableInfos
        .Any(x => x.DataType.IndexOf("max", StringComparison.OrdinalIgnoreCase) >= 0) switch
        {
            false => IndexType.Hash,
            true => IndexType.Cluster
        };

    static bool isNonuniqueIndex(SqlProjectOption projectOption, string tableName, string columnName) => projectOption.Relationships
        .Any(x =>
            x.TableName.Equals(tableName, StringComparison.OrdinalIgnoreCase) &&
            x.ColumnName.Equals(columnName, StringComparison.OrdinalIgnoreCase)
            );

    static TableMode getTableMode(string tableName, IReadOnlyList<TableTypeMetadata>? tableMetadata) => tableMetadata switch
    {
        null => TableMode.None,
        not null => tableMetadata.FirstOrDefault(x => x.TableName.Equals(tableName, StringComparison.OrdinalIgnoreCase)) switch
        {
            TableTypeMetadata v => convertTo(v),
            _ => TableMode.None,
        }
    };

    static TableMode convertTo(TableTypeMetadata tableTypeMetadata) => tableTypeMetadata.Mode.FindEnumValue<TableMode>(true) switch
    {
        string v => v.ToEnum<TableMode>(),
        _ => TableMode.None,
    };
}
