using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public enum AddInstructionType
{
    Single,
    Template
}

public record AddInstruction
{
    public AddInstructionType Model { get; init; } = AddInstructionType.Single;
    public string? Pattern { get; init; }
    public IList<string> Patterns { get; init; } = new List<string>();
    public string? SelectLine { get; init; }
    public string? SelectLineOrder { get; init; }
    public string? JoinLine { get; init; }
    public string? WhereLine { get; init; }
}


public static class AddInstructionExtensions
{
    public static AddInstruction Verify(this AddInstruction instruction)
    {
        instruction.NotNull();
        instruction.Model.AssertValid();
        instruction.Patterns.NotNull();

        return instruction;
    }

    public static IReadOnlyList<string> GetPatterns(this AddInstruction instruction) => instruction.Patterns.NotNull()
        .Append(instruction.Pattern)
        .Where(x => !x.IsEmpty())
        .OfType<string>()
        .SelectMany(x => x.Split(';', StringSplitOptions.RemoveEmptyEntries))
        .ToArray();

    public static bool IsMatch(this AddInstruction instruction, string value) => instruction.GetPatterns().Any(x => PatternMatch.IsMatch(x, value));

    public static bool IsSelect(this AddInstruction instruction) => !instruction.SelectLine.IsEmpty();
    public static bool IsJoin(this AddInstruction instruction) => !instruction.JoinLine.IsEmpty();
    public static bool IsWhere(this AddInstruction instruction) => !instruction.WhereLine.IsEmpty();
}
