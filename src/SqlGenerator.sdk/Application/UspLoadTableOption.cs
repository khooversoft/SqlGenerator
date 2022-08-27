using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record UspLoadTableOption
{
    public string OutputFile { get; init; } = null!;
    public string DataTableName { get; init; } = null!;
    public string DataLayerName { get; init; } = null!;
}


public static class UspLoadTableOptionExtensions
{
    public static void Verify(this UspLoadTableOption subject)
    {
        subject.NotNull();
        subject.OutputFile.NotEmpty();
        subject.DataTableName.NotEmpty();
        subject.DataLayerName.NotEmpty();
    }
}
