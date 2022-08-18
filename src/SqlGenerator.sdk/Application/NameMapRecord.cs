using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record NameMapRecord
{
    public string Long { get; init; } = null!;
    public string Short { get; init; } = null!;
}


public static class NameMapRecordExtensions
{
    public static NameMapRecord Verify(this NameMapRecord subject)
    {
        subject.NotNull();
        subject.Long.NotEmpty();
        subject.Short.NotEmpty();

        return subject;
    }
}