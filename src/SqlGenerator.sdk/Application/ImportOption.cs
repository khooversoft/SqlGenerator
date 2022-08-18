using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ImportOption
{
    public string Name { get; init; } = null!;
    public IReadOnlyList<SchemaModel> Schemas { get; init; } = Array.Empty<SchemaModel>();
    public IReadOnlyList<ColumnDefinitionModel> PrefixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
    public IReadOnlyList<ColumnDefinitionModel> SufixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
    public IReadOnlyList<NameMapRecord> NameMaps { get; init; } = Array.Empty<NameMapRecord>();
    public IReadOnlyList<string> MasterTables { get; init; } = Array.Empty<string>();
}


public static class ImportOptionExtensions
{
    public static ImportOption Verify(this ImportOption? subject)
    {
        subject.NotNull();
        subject.Schemas.NotNull();
        subject.PrefixColumns.NotNull();
        subject.SufixColumns.NotNull();
        subject.NameMaps.NotNull();
        subject.MasterTables.NotNull();

        return subject;
    }

    public static ImportOption ConvertTo(this ImportOptionModel model, string name, IEnumerable<NameMapRecord> nameMaps, IEnumerable<string> masterTables)
    {
        model.NotNull();
        name.NotEmpty();
        nameMaps.NotNull();
        masterTables.NotNull();

        return new ImportOption
        {
            Name = name,
            Schemas = model.Schemas.ToList(),
            PrefixColumns = model.PrefixColumns.ToList(),
            SufixColumns = model.SufixColumns.ToList(),
            NameMaps = nameMaps.ToList(),
            MasterTables = masterTables.ToList()
        };
    }
}