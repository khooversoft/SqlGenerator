using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataTools.sdk.Model;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public record SecurityModel
{
    public required string Pattern { get; init; }
    public required string Security { get; init; }
}


public static class SecurityModelExtensions
{
    public static SecurityModel Verify(this SecurityModel subject)
    {
        subject.NotNull();
        subject.Pattern.NotEmpty();
        subject.Security.NotEmpty();

        return subject;
    }
}