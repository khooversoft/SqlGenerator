using DataTools.sdk.Application;
using DataTools.sdk.Storage;
using Toolbox.Data;
using Toolbox.Tools;

namespace DataTools.sdk.Model;

public record DataDictionary
{
    public IReadOnlyList<TableInfo> Items { get; init; } = Array.Empty<TableInfo>();
}


public static class DataDictionaryFile
{
    public static DataDictionary Verify(this DataDictionary subject)
    {
        subject.NotNull();
        subject.Items.NotNull();

        return subject;
    }

    public static DataDictionary Read(string file)
    {
        file.NotEmpty();

        StringTable table = CsvFile.ReadDynamic(file);

        return new DataDictionary
        {
            Items = table.ConvertToTableInfo(),
        };
    }

    public static DataDictionary Write(this DataDictionary dataDictionary, string file)
    {
        dataDictionary.Verify();
        file.NotEmpty();

        int startOrdinal = dataDictionary.Items.Count + 1;

        TableInfo[] records = dataDictionary.Items
            .Select((x, i) => x.Ordinal > 0 ? x : x with { Ordinal = startOrdinal + i })
            .OrderBy(x => x.TableName)
            .ThenBy(x => x.Ordinal)
            .ToArray();

        var addColumns = dataDictionary.Items
            .SelectMany(x => x.Security.Items)
            .Distinct()
            .Select((x, i) => (index: i, columnName: x))
            .OrderBy(x => x.index)
            .ToArray();

        var table = new StringTable()
            + Constants.ColumnIndex.List()
                .Select(x => x.LabelColumnName)
                .Concat(addColumns.Select(x => x.columnName));

        foreach (var item in dataDictionary.Items)
        {
            var row = new StringRow()
                + item.TableName
                + item.ColumnName
                + item.DataType
                + (item.NotNull ? "NOT NULL" : "NULL")
                + (item.PrimaryKey ? "Yes" : "")
                + (addColumns.Select(x => item.Security.Contains(x.columnName) ? "Yes" : string.Empty));
        }

        table.WriteToCsv(file);

        return dataDictionary;
    }
}
