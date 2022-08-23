using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class InstructionObjectBuilder
{
    public InstructionObjects Build(Instructions instructions)
    {
        instructions.NotNull();

        Context context = new Context();
        Build(instructions, "", 0, context);

        return context.ConvertTo();
    }

    private void Build(Instructions instructions, string folder, int indentLevel, Context context)
    {
        const int spacesPerIndentLevel = 3;

        var folderStack = new Stack<string>().Action(x => x.Push(folder));

        foreach (var instruction in instructions.Items)
        {
            switch (instruction)
            {
                case Instruction i when i.Type == InstructionType.PushFolder:
                    folderStack.Push(Path.Combine(folderStack.Peek(), i.Text));
                    break;

                case Instruction i when i.Type == InstructionType.PopFolder:
                    folderStack.Pop();
                    break;

                case Instruction i when i.Type == InstructionType.Stream:
                    string outputFile = Path.Combine(folderStack.Peek(), i.Text);
                    context.AddEntry(outputFile);
                    break;

                case Instruction i when i.Type == InstructionType.Code:
                    context += PrependSpaces(indentLevel * spacesPerIndentLevel) + i.Text;
                    break;

                case Instruction i when i.Type == InstructionType.TabPlus:
                    indentLevel++;
                    break;

                case Instruction i when i.Type == InstructionType.TabMinus:
                    indentLevel--;
                    indentLevel.Assert(x => x >= 0, x => $"Invalid indentLevel={x}");
                    break;

                case Instructions instr:
                    Build(instr, folderStack.Peek(), indentLevel, context);
                    break;

                default:
                    throw new ArgumentException($"Unknown instruction, type={instruction.GetType().FullName}");
            }
        }

        static string PrependSpaces(int spaces) => spaces == 0 ? string.Empty : new string(' ', spaces);
    }

    private class Context
    {
        private readonly List<ContextEntry> _contextEntries = new List<ContextEntry>();
        public Context AddEntry(string filePath) => this.Action(x => x._contextEntries.Add(new ContextEntry(filePath)));
        public ContextEntry GetCurrent() => _contextEntries.Last();

        public InstructionObjects ConvertTo()
        {
            return new InstructionObjects
            {
                Items = _contextEntries.Select(x => new InstructionObject
                {
                    Path = x.FilePath,
                    Lines = x.Lines.ToList(),
                }).ToList(),
            };
        }

        public static Context operator +(Context context, string line) => context.Action(x => x.GetCurrent().Lines.Add(line));
    }

    private record ContextEntry
    {
        public ContextEntry(string filePath) => FilePath = filePath.NotNull();
        public string FilePath { get; }
        public List<string> Lines { get; init; } = new List<string>();
    }
}
