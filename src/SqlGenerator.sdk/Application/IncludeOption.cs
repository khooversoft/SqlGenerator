using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public sealed record IncludeOption
{
    public IList<string> IncludeFiles { get; init; } = Array.Empty<string>();
}


public static class IncludeOptionFile
{
    public static IncludeOption Read(string projectFile) => File.ReadAllText(projectFile)
        .ToObject<IncludeOption>()
        .NotNull();

    public static IncludeOption Verify(this IncludeOption? subject)
    {
        subject.NotNull();

        return subject;
    }

}