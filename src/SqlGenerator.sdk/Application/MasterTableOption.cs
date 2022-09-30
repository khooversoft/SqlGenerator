using DocumentFormat.OpenXml.Drawing.Charts;
using DocumentFormat.OpenXml.Math;
using DocumentFormat.OpenXml.Spreadsheet;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

/// <summary>
/// Master table filter options, list included tables/columns
/// 
/// Format: tableName[:columnName]
///     Both table name and column names support wild cards
/// 
/// Examples:
///     "table1" - include "table1" and all its columns
///     "table1:*" - include "table1" and all its columns
///     "table1:column1" - include "table1" and "column1"
///     "tab*:*" - include tables that start with "tab" and all their columns
///     "tab*:cust*" - include tables that start with "tab" and columns that start with "cust"
///     
/// </summary>
public record MasterTableOption
{
    public IReadOnlyList<string> Tables { get; init; } = Array.Empty<string>();
}

public record MasterTableRecord
{
    public string TableName { get; init; } = null!;
    public string? ColumnName { get; init; }
    public string? MapToName { get; init; }
}


public static class MasterTableOptionFile
{
    public static MasterTableOption Verify(this MasterTableOption subject)
    {
        subject.NotNull();
        subject.Tables.NotNull();

        return subject;
    }

    public static MasterTableOption Read(string file) => File.ReadAllText(file)
        .ToObject<MasterTableOption>()
        .NotNull()
        .Verify();

    public static async Task Write(this MasterTableOption subject, string file)
    {
        subject.NotNull();
        file.NotEmpty();

        await File.WriteAllTextAsync(file, subject.ToJsonFormat());
    }

    public static IReadOnlyList<MasterTableRecord> GetDetails(this MasterTableOption subject)
    {
        return subject.Tables
           .Select(x => parseMapTo(x))
           .Select(x => (map: x, table: parseTable(x.table)))
           .Select(x => new MasterTableRecord
           {
               TableName = x.table.tableName,
               ColumnName = x.table.columnName,
               MapToName = x.map.mapToName,
           })
           .ToArray();


        static (string table, string? mapToName) parseMapTo(string data) => data
            .Split("=>", StringSplitOptions.RemoveEmptyEntries)
            .Select(x => x.Trim())
            .Func(x => parse(x));

        static (string tableName, string? columnName) parseTable(string data) => data
            .Split(':', StringSplitOptions.RemoveEmptyEntries)
            .Select(x => x.Trim())
            .Func(x => parse(x));

        static (string value1, string? value2) parse(IEnumerable<string> values) => values.ToArray() switch
        {
            string[] v when v.Length == 1 => (v[0], null),
            string[] v when v.Length == 2 => (v[0], v[1]),

            _ => throw new ArgumentException($"Syntax error: {values.Join(",")}"),
        };
    }

    public static MasterTableRecord? Find(this MasterTableOption subject, string tableName, string columnName) => subject.GetDetails()
        .Where(x => PatternMatch.IsMatch(x.TableName, tableName))
        .Where(x => x.ColumnName.IsEmpty() || PatternMatch.IsMatch(x.ColumnName, columnName))
        .FirstOrDefault();

    public static bool IsInclude(this MasterTableOption subject, string tableName, string columnName) => subject.Find(tableName, columnName) switch
    {
        null => false,
        MasterTableRecord v => v.MapToName.IsEmpty(),
    };

    public static bool IsIncludeColumn(this MasterTableOption subject, string columnName) => subject.GetDetails()
        .Where(x => !x.ColumnName.IsEmpty() && PatternMatch.IsMatch(x.ColumnName, columnName))
        .Any();

    public static string? GetMapToName(this MasterTableOption subject, string columnName) => subject.GetDetails()
        .Where(x => !x.ColumnName.IsEmpty() && PatternMatch.IsMatch(x.ColumnName, columnName))
        .Where(x => !x.MapToName.IsEmpty())
        .FirstOrDefault()?.MapToName;
}
