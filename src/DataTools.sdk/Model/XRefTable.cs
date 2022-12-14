using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CsvHelper;
using CsvHelper.Configuration;
using CsvHelper.Configuration.Attributes;
using DocumentFormat.OpenXml.Math;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataTools.sdk.Model;

public record XRefTableModel
{
    [Name("TABLENAME")]
    public string TableName { get; init; } = null!;

    [Name("COLUMNNAME")]
    public string ColumnName { get; init; } = null!;

    [Name("LKP_TABLE")]
    public string LookupTable { get; init; } = null!;

    [Name("LKP_COLUMN")]
    public string LookupColumnName { get; init; } = null!;

    [Name("LKP_DISPLAY_COLUMN")]
    public string LookupDisplayColumnName { get; init; } = null!;
}


public static class XRefTableFile
{
    public static XRefTableModel Verify(this XRefTableModel subject)
    {
        subject.NotNull();
        subject.TableName.NotEmpty();
        subject.ColumnName.NotEmpty();
        subject.LookupTable.NotEmpty();
        subject.LookupColumnName.NotEmpty();
        subject.LookupDisplayColumnName.NotEmpty();

        return subject;
    }

    public static IReadOnlyList<XRefTableModel> Read(string file)
    {
        file.NotEmpty();

        var config = new CsvConfiguration(CultureInfo.InvariantCulture)
        {
            Delimiter = "||",
        };

        using var reader = new StreamReader(file);
        using CsvReader csv = new CsvReader(reader, config);

        return csv
            .GetRecords<XRefTableModel>()
            .ToArray();
    }
}
