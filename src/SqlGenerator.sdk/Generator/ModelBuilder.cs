using CsvHelper;
using SqlGenerator.sdk.Import;
using SqlGenerator.sdk.Model;
using System.Globalization;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class ModelBuilder
{
    public PhysicalModel Build(string name, IEnumerable<TableInfo> infos, ImportOption importOption)
    {
        name.NotEmpty();
        infos.NotNull();
        importOption.NotNull();

        IReadOnlyList<TableInfo> tableInfos = infos.ToList();

        SchemaModel schemaModel = importOption.Schemas
            .Where(x => x.Security == Security.Data)
            .FirstOrDefault()
            .NotNull(name: $"Cannot find data schema in option");

        IReadOnlyList<TableModel> tableModels = GenerateTable(tableInfos, importOption, schemaModel);

        IReadOnlyList<ViewModel> viewModels = importOption.Schemas
            .Where(x => x.Security != Security.Data)
            .SelectMany(x => GenerateView(tableInfos, importOption, x, Security.Data.ToString()))
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

    private IReadOnlyList<TableInfo> Read(string file)
    {
        using var reader = new StreamReader(file);
        using var csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<TableInfo>()
            .ToList();
    }

    private IReadOnlyList<TableModel> GenerateTable(IReadOnlyList<TableInfo> tableInfos, ImportOption importOption, SchemaModel schemaModel)
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

    private IReadOnlyList<ViewModel> GenerateView(IReadOnlyList<TableInfo> tableInfos, ImportOption importOption, SchemaModel schemaModel, string dataSchema)
    {
        return tableInfos
            .GroupBy(x => x.TableName)
            .Select(x => new ViewModel
            {
                Name = new ObjectName { Schema = schemaModel.Name, Name = "Vw_" + x.Key },
                Table = new ObjectName { Schema = dataSchema, Name = x.Key },
                Columns = x.Select(y => new ColumnModel
                {
                    Name = y.ColumnName,
                    Security = y.GetSecurity(),
                    HashKey = y.HashKey
                }).ToList(),
            }).ToList();
    }
}
