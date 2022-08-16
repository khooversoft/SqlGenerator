using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public sealed record PhysicalModel
{
    public string Name { get; init; } = null!;
    public IReadOnlyList<SchemaModel> Schemas { get; init; } = Array.Empty<SchemaModel>();
    public IReadOnlyList<ViewModel> Views { get; init; } = Array.Empty<ViewModel>();
    public IReadOnlyList<TableModel> Tables { get; init; } = Array.Empty<TableModel>();
    public IReadOnlyList<ColumnDefinitionModel> PrefixColumns { get; init;} = Array.Empty<ColumnDefinitionModel>();
    public IReadOnlyList<ColumnDefinitionModel> SufixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();

    public bool Equals(PhysicalModel? obj)
    {
        return obj is PhysicalModel model &&
            Name == model.Name &&
            Schemas.Count == model.Schemas.Count &&
            Schemas.Zip(model.Schemas).All(x => x.First == x.Second) &&
            Views.Count == model.Views.Count &&
            Views.Zip(model.Views).All(x => x.First == x.Second) &&
            Tables.Count == model.Tables.Count &&
            Tables.Zip(model.Tables).All(x => x.First == x.Second);
    }

    public override int GetHashCode() => HashCode.Combine(Name, Schemas, Views, Tables);
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

    public static bool IsSchemaPresent(this PhysicalModel subject, string name) => subject.GetSchemaModel(name) != null;

    public static SchemaModel? GetSchemaModel(this PhysicalModel subject, string name) => subject.Schemas.FirstOrDefault(x => x.Name == name);
}
