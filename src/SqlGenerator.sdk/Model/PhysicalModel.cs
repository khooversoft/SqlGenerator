using SqlGenerator.sdk.Project;
using SqlGenerator.sdk.Project.Activities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record PhysicalModel
{
    public IReadOnlyList<SchemaModel> Schemas { get; init; } = Array.Empty<SchemaModel>();
    public IReadOnlyList<TableModel> Tables { get; init; } = Array.Empty<TableModel>();
    public IReadOnlyList<ViewModel> Views { get; init; } = Array.Empty<ViewModel>();
    public IReadOnlyList<ColumnDefinitionModel> PrefixColumns { get; init;} = Array.Empty<ColumnDefinitionModel>();
    public IReadOnlyList<ColumnDefinitionModel> SuffixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();

    public bool Equals(PhysicalModel? obj)
    {
        return obj is PhysicalModel model &&
            Schemas.Count == model.Schemas.Count &&
            Schemas.Zip(model.Schemas).All(x => x.First == x.Second) &&
            Views.Count == model.Views.Count &&
            Views.Zip(model.Views).All(x => x.First == x.Second) &&
            Tables.Count == model.Tables.Count &&
            Tables.Zip(model.Tables).All(x => x.First == x.Second);
    }

    public override int GetHashCode() => HashCode.Combine(Schemas, Views, Tables);
}


public static class PhysicalModelExtensions
{
    public static PhysicalModel Verify(this PhysicalModel subject)
    {
        subject.NotNull();
        subject.NotNull().Schemas.ForEach(x => x.Verify());
        subject.NotNull().Views.ForEach(x => x.Verify());
        subject.NotNull().Tables.ForEach(x => x.Verify());

        subject.Views.ForEach(x => subject.IsSchemaPresent(x.Name.Schema).Assert(x => x == true, $"Schema={x.Name.Schema} not found"));
        subject.Tables.ForEach(x => subject.IsSchemaPresent(x.Name.Schema).Assert(x => x == true, $"Schema={x.Name.Schema} not found"));

        return subject;
    }

    public static Counters ToCounters(this PhysicalModel model) => new Counters(nameof(ModelActivity))
    {
        ("Schema count", model.Schemas.Count),
        ("Table count", model.Tables.Count),
        ("View count", model.Views.Count),
        ("Prefix columns count", model.PrefixColumns.Count),
        ("Suffix columns count", model.SuffixColumns.Count),
    };

    public static bool IsSchemaPresent(this PhysicalModel subject, string name) => subject.GetSchemaModel(name) != null;
    public static SchemaModel? GetSchemaModel(this PhysicalModel subject, string name) => subject.Schemas.FirstOrDefault(x => x.Name == name);
}
