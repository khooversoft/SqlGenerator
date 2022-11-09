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
    public IReadOnlyList<ColumnModel> PrefixColumns { get; init; } = Array.Empty<ColumnModel>();
    public IReadOnlyList<ColumnModel> SuffixColumns { get; init; } = Array.Empty<ColumnModel>();
    public IReadOnlyList<RelationshipModel> Relationships { get; init; } = Array.Empty<RelationshipModel>();
    public IReadOnlyList<LookupRelationshipModel> LookupRelationships { get; init; } = Array.Empty<LookupRelationshipModel>();

    public bool Equals(PhysicalModel? obj)
    {
        return obj is PhysicalModel model &&
            Schemas.Count == model.Schemas.Count &&
            Schemas.Zip(model.Schemas).All(x => x.First == x.Second) &&
            Tables.Count == model.Tables.Count &&
            Tables.Zip(model.Tables).All(x => x.First == x.Second) &&
            Relationships.Count == model.Relationships.Count &&
            Relationships.Zip(model.Relationships).All(x => x.First == x.Second) &&
            LookupRelationships.Count == model.LookupRelationships.Count &&
            LookupRelationships.Zip(model.LookupRelationships).All(x => x.First == x.Second);
    }

    public override int GetHashCode() => HashCode.Combine(Schemas, Tables);
}


public static class PhysicalModelExtensions
{
    public static PhysicalModel Verify(this PhysicalModel subject)
    {
        subject.NotNull();
        subject.NotNull().Schemas.ForEach(x => x.Verify());
        subject.NotNull().Tables.ForEach(x => x.Verify());
        subject.NotNull().Relationships.ForEach(x => x.Verify());
        subject.NotNull().LookupRelationships.ForEach(x => x.Verify());

        subject.Tables.ForEach(x => subject.IsSchemaPresent(x.Name.Schema).Assert(x => x == true, $"Schema={x.Name.Schema} not found"));

        return subject;
    }

    public static bool IsSchemaPresent(this PhysicalModel subject, string name) => subject.GetSchemaModel(name) != null;
    public static SchemaModel? GetSchemaModel(this PhysicalModel subject, string name) => subject.Schemas.FirstOrDefault(x => x.Name == name);
}
