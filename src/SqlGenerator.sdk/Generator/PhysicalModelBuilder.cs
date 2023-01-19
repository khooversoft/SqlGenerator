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
        IReadOnlyList<TableTypeMetadata>? tableMetadata,
        IReadOnlyList<TableInfo>? protection
        )
    {
        infos.NotNull();
        projectOption.Verify();

        IReadOnlyList<TableInfo> tableInfos = ApplyProtection(infos, protection);
        VerifySecurity(tableInfos, projectOption.Schemas);

        SchemaModel dataSchemaModel = projectOption.Schemas
            .Where(x => x.ForTable())
            .FirstOrDefault()
            .NotNull(name: $"Cannot find data schema in option");

        IReadOnlyList<TableModel> tableModels = GenerateTable(tableInfos, dataSchemaModel, projectOption, tableMetadata);

        return new PhysicalModel
        {
            Schemas = projectOption.Schemas.ToArray(),
            Tables = tableModels,
            PrefixColumns = projectOption.PrefixColumns.ToArray(),
            SuffixColumns = projectOption.SufixColumns.ToArray(),
            Commands = projectOption.CommandOptions.ToArray(),
            AddInstructions = projectOption.AddInstructions.ToArray(),
            XRefTables = ReadXRefTable(projectOption),
        }.Verify();
    }

    private void VerifySecurity(IReadOnlyList<TableInfo> tableInfos, IList<SchemaModel> schemas)
    {
        var securityUsed = tableInfos
            .SelectMany(x => x.Security.Items)
            .Select(x => x.ToLower())
            .Distinct()
            .OrderBy(x => x)
            .ToArray();

        var schemaUsed = schemas
            .Where(x => x.ForView())
            .Select(x => x.Security.ToLower())
            .Distinct()
            .OrderBy(x => x)
            .ToArray();

        Verify.Assert(
            () => !securityUsed.Except(schemaUsed).Any(),
            $"Schema security does not match data dictionary's security settings, securityUsed={securityUsed.Join(",")}, schemaUsed={schemaUsed.Join(",")}"
            );
    }

    private IReadOnlyList<TableInfo> ApplyProtection(IReadOnlyList<TableInfo> tableInfos, IReadOnlyList<TableInfo>? protection)
    {
        return protection switch
        {
            null => tableInfos.ToArray(),

            var v => tableInfos
                .GroupJoin(v, x => x.GetColumnKey(), x => x.GetColumnKey(), (o, i) => (row: o, protection: i))
                .Select(x => x.row with
                {
                    Security = new SecurityList(mergeSecurity(x.row, x.protection)),
                })
                .ToArray(),
        };

        IEnumerable<string> mergeSecurity(TableInfo row, IEnumerable<TableInfo> protection) => row.Security.Items
            .Concat(protection.SelectMany(x => x.Security.Items));
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
                Columns = x.Where(y => y.DataType != "**").Select((y, i) => new ColumnModel
                {
                    Name = y.ColumnName,
                    Security = y.Security,
                    DataType = y.DataType,
                    NotNull = y.NotNull,
                    PrimaryKey = y.PrimaryKey || IsPrimaryKey(x.Key, y.ColumnName, projectOption),
                    ColumnIndex = i,
                }).ToList(),
            }).ToList();
    }

    private static IndexType GetIndexType(IReadOnlyList<TableInfo> tableInfos) =>
        tableInfos
        .Any(x => x.DataType.Contains("max", StringComparison.OrdinalIgnoreCase)) switch
        {
            false => IndexType.Hash,
            true => IndexType.Cluster
        };

    private static bool IsPrimaryKey(string tableName, string columnName, SqlProjectOption projectOption) => projectOption.CommandOptions
        .Where(x => x.Type == CommandType.PrimaryKey)
        .Any(x => PatternMatch.IsMatch(x.Pattern, $"{tableName}.{columnName}"));

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

    private static IReadOnlyList<XRefTableModel> ReadXRefTable(SqlProjectOption projectOption) => projectOption.CommandOptions
        .Where(x => x.Type == CommandType.XRefTable)
        .SelectMany(x => XRefTableFile.Read(x.Pattern))
        .ToArray();
}
