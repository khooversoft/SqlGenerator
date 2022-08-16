namespace SqlGenerator.sdk.Generator;

public record Instruction : IInstruction
{
    public InstructionType Type { get; init; }
    public string Text { get; init; } = null!;
}
