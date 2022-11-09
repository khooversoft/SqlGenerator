using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.sdk.Grammar;

public record Command
{
    public string Label { get; init; } = null!;
    public IReadOnlyList<string> Options { get; init; } = Array.Empty<string>();
}
