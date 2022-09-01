using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record RawToCultivatedOption
{
    public string OutputFile { get; init; } = null!;
    public string PipelineName { get; init; } = null!;
    public string ActivityName { get; init; } = null!;
    public string? ParamValueFormat { get; init; }
}


public static class TemplateOptionExtensions
{
    public static void Verify(this RawToCultivatedOption subject)
    {
        subject.NotNull();
        subject.OutputFile.NotEmpty();
        subject.PipelineName.NotEmpty();
        subject.ActivityName.NotEmpty();
    }
}
