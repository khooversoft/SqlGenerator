using DataTools.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public record LookupRelationshipModel
{
    public string ReferenceTable { get; init; } = null!;
    public string MatchTable { get; init; } = null!;
    public string SelectLine { get; init; } = null!;
    public string JoinLine { get; init; } = null!;
}


public static class LookupRelationshipModelExtensions
{
    public static LookupRelationshipModel Verify(this LookupRelationshipModel subject)
    {
        subject.NotNull();
        subject.MatchTable.NotEmpty();
        subject.SelectLine.NotEmpty();
        subject.JoinLine.NotEmpty();

        return subject;
    }
}
