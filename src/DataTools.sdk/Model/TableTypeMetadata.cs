using CsvHelper;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataTools.sdk.Model;

public record TableTypeMetadata
{
    public string TableName { get; init; } = null!;
    public string Mode { get; init; } = null!;
}


public static class TableTypeMetadataFile
{
    public static TableTypeMetadata Verify(this TableTypeMetadata subject)
    {
        subject.NotNull();
        subject.TableName.NotEmpty();
        subject.Mode.NotEmpty();

        return subject;
    }

    public static IReadOnlyList<TableTypeMetadata> Read(string file)
    {
        file.NotEmpty();

        using var reader = new StreamReader(file);
        using CsvReader csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<TableTypeMetadata>().ToArray();
    }
}
