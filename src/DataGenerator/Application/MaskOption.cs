using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace DataGenerator.Application;

public record MaskOption
{
    public IReadOnlyList<string> ColumnsToMask { get; set; } = Array.Empty<string>();
}


public static class MaskOptionExtensions
{
    public static MaskOption Verify(this MaskOption subject)
    {
        subject.NotNull();
        subject.ColumnsToMask.NotNull();

        return subject;
    }
}