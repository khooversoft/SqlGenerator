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
    public required string Pattern { get; init; } = null!;
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
        instruction.Pattern.NotEmpty();

        return instruction;
    }

    public static bool IsSelect(this AddInstruction instruction) => !instruction.SelectLine.IsEmpty();
    public static bool IsJoin(this AddInstruction instruction) => !instruction.JoinLine.IsEmpty();
    public static bool IsWhere(this AddInstruction instruction) => !instruction.WhereLine.IsEmpty();

    public static bool IsPattern(this AddInstruction instruction, string tableName) =>
        !instruction.Pattern.IsEmpty() ? PatternMatch.IsMatch(instruction.Pattern, tableName) : false;

    public static bool IsPattern(this AddInstruction instruction, string tableName, string columnName) =>
       !instruction.Pattern.IsEmpty() ? PatternMatch.IsMatch(instruction.Pattern, $"{tableName}.{columnName}") : false;
}
