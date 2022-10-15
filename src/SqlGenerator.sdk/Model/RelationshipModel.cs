using DataTools.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public enum RelationshipType
{
    DeleteFilter,
}

public record RelationshipModel
{
    public string TableName { get; init; } = null!;
    public string ColumnName { get; init; } = null!;
    public string ReferenceObjectId { get; init; } = null!;
    public RelationshipType RelationshipType { get; init; } = RelationshipType.DeleteFilter;
}

public static class RelationshipModelExtensions
{
    public static RelationshipModel Verify(this RelationshipModel subject)
    {
        subject.NotNull();
        subject.TableName.NotEmpty();
        subject.ColumnName.NotEmpty();
        subject.ReferenceObjectId.NotEmpty();
        subject.RelationshipType.AssertValid();

        return subject;
    }
}