using Microsoft.Extensions.Logging;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ProjectOption
{
    public string? SourceFile { get; init; }
    public string? OptionFile { get; init; }
    public string? NameMapFile { get; init; }
    public string? TableListFile { get; init; }
    public string? BuildFolder { get; init; }
    public UspLoadTableOption? UspLoadTableOption { get; init; }
    public RawToCultivatedOption? RawToCultivated { get; init; }
}
