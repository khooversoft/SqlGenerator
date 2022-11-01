using DataGenerator.Activities;
using DataTools.sdk.Storage;
using Microsoft.Extensions.Logging;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataTools.sdk.Application;

public static class MappedFile
{
    public static StringTable Read(string mapFile) => CsvFile.ReadDynamic(mapFile);


    /// <summary>
    /// Support for building mapping from multiple sources to a single "common" schema
    ///     
    /// Given a table, column to mapped column, transform into a mapped detail
    /// 
    /// Columns = input table name + "Mapped" for column map
    /// Example:
    ///   Column1 = "Source1" - lists columns in source1
    ///   Column2 = "Source2" - lists columns in source2
    ///   Column[n]...
    ///   "Mapped" = column name to in single "common" schema
    ///   
    /// </summary>
    /// <param name="stringTable"></param>
    /// <returns></returns>
    public static IReadOnlyList<MappedDetail> ToMappedDetails(this StringTable stringTable, string? mappingColumnName = null)
    {
        mappingColumnName ??= "mapped";

        IReadOnlyList<string> headers = stringTable.Header
            .Where(x => !x.Equals(mappingColumnName, StringComparison.OrdinalIgnoreCase))
            .ToArray()
            .Action(x => testForDuplicates(x));

        IReadOnlyList<string> mapToNameData = stringTable.Header.FindIndex(x => x.Equals(mappingColumnName, StringComparison.OrdinalIgnoreCase))
            .Assert(x => x >= 0, $"Cannot find {mappingColumnName} header for mapping")
            .Func(x => stringTable.GetColumnData(x));

        IReadOnlyList<string> tableNames = headers
            .Where(x => stringTable.Header.Contains(x, StringComparer.OrdinalIgnoreCase))
            .Distinct(StringComparer.OrdinalIgnoreCase)
            .ToArray();

        IReadOnlyList<MappedDetail> list = tableNames
            .SelectMany(x => stringTable.GetColumnData(x).NotNull().Zip(mapToNameData).Select(y => new MappedDetail
            {
                TableName = x,
                ColumnName = y.First,
                MapToName = y.Second,
            }))
            .Where(x => !x.ColumnName.IsEmpty() && !x.MapToName.IsEmpty())
            .ToArray();

        return list;

        void testForDuplicates(IReadOnlyList<string> headers) => headers
            .GroupBy(x => x)
            .Where(x => x.Count() > 1)
            .Select(x => x.Key)
            .Assert(x => x.Count() == 0, x => $"Duplicate {mappingColumnName} values={x.Join(",")}");
    }

    public static void Write(this IReadOnlyList<MappedDetail> mappedDetails, string folder, ILogger logger)
    {
        var group = mappedDetails.GroupBy(x => x.TableName);

        foreach (var item in group)
        {
            string file = Path.Combine(folder, $"{item.Key.Replace("*", "(star)")}_toCommon.csv");
            logger.LogInformation("Writing mapped file {file}", file);

            var line = item.Select(x => new { Table = x.TableName, Column = x.ColumnName, x.MapToName }.ToDynamic());
            CsvFile.Write(file, line);
        }
    }

    public static StringTable Merge(this IReadOnlyList<MappedDetail> mappedDetails, IReadOnlyList<DataFileContent> files)
    {
        mappedDetails
            .GroupBy(x => x.MapToName)
            .Assert(x => x.Any(y => y.Count() > 1), "Duplicate MapToNames");

        IReadOnlyList<string> headers = mappedDetails
            .Select(x => x.MapToName)
            .Distinct()
            .ToArray();

        IReadOnlyList<StringTable> tables = files
            .Select(x => transformTable(x.TableName))
            .ToArray();

        // Setup headers and merge tables
        var table = new StringTable(true) + headers + tables;

        return table;

        StringTable transformTable(string tableName)
        {
            var map = mappedDetails
                .Where(x => PatternMatch.IsMatch(x.TableName, tableName))
                .ToArray();

            var file = files.First(x => x.TableName == tableName);

            var table = map
                .Select(x => file.Table.GetColumnData(x.ColumnName, x.MapToName))
                .OfType<StringColumn>()
                .ToTable();

            return table;
        }
    }
}
