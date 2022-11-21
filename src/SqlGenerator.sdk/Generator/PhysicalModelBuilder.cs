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
            Commands = projectOption.CommandOptions.ToArray(),
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
                IndexType = GetIndexType(x.ToArray()) switch
                {
                    IndexType.Hash => x.Any(y => IsPrimaryKey(x.Key, y.ColumnName, projectOption)) ? IndexType.Cluster : IndexType.Hash,
                    var v => v,
                },
                TableMode = GetTableMode(x.Key, tableMetadata),
                Columns = x.Select((y, i) => new ColumnModel
                {
                    Name = y.ColumnName,
                    Security = y.GetSecurity(),
                    DataType = y.DataType,
                    NotNull = y.NotNull,
                    PrimaryKey = y.PrimaryKey || IsPrimaryKey(x.Key, y.ColumnName, projectOption),
                    NonuniqueIndex = IsNonuniqueIndex(projectOption, x.Key, y.ColumnName),
                    PII = y.PII,
                    Restricted = y.Restricted,
                    ColumnIndex = i,
                }).ToList(),
            }).ToList();
    }

    private static IndexType GetIndexType(IReadOnlyList<TableInfo> tableInfos) =>
        tableInfos
        .Any(x => x.DataType.IndexOf("max", StringComparison.OrdinalIgnoreCase) >= 0) switch
        {
            false => IndexType.Hash,
            true => IndexType.Cluster
        };

    private static bool IsPrimaryKey(string tableName, string columnName, SqlProjectOption projectOption) => projectOption.CommandOptions
        .Where(x => x.Type == CommandType.PrimaryKey)
        .Any(x => PatternMatch.IsMatch(x.Pattern, $"{tableName}.{columnName}"));

    private static bool IsNonuniqueIndex(SqlProjectOption projectOption, string tableName, string columnName) => projectOption.Relationships
        .Any(x => x.TableName.EqualsIgnoreCase(tableName) && x.ColumnName.EqualsIgnoreCase(columnName));

    private static TableMode GetTableMode(string tableName, IReadOnlyList<TableTypeMetadata>? tableMetadata) => tableMetadata switch
    {
        null => TableMode.None,
        not null => tableMetadata.FirstOrDefault(x => x.TableName.EqualsIgnoreCase(tableName)) switch
        {
            TableTypeMetadata v => ConvertTo(v),
            _ => TableMode.None,
        }
    };

    private static TableMode ConvertTo(TableTypeMetadata tableTypeMetadata) => tableTypeMetadata.Mode.FindEnumValue<TableMode>(true) switch
    {
        string v => v.ToEnum<TableMode>(),
        _ => TableMode.None,
    };
}
