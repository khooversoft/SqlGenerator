namespace SqlGenerator.sdk.Generator;

public record InstructionObject
{
    public string Path { get; init; } = null!;
    public IReadOnlyList<string> Lines { get; init; } = Array.Empty<string>();
}

public record InstructionObjects
{
    public IReadOnlyList<InstructionObject> Items { get; init; } = Array.Empty<InstructionObject>();
}
