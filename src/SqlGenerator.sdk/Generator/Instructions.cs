﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;

namespace SqlGenerator.sdk.Generator;

public class Instructions : IInstruction
{
    private readonly List<IInstruction> _list = new List<IInstruction>();

    public IReadOnlyList<object> Items => _list;

    public static Instructions operator +(Instructions collection, IInstruction value) => collection.Action(x => x._list.Add(value));
    public static Instructions operator +(Instructions collection, IEnumerable<IInstruction> values) => collection.Action(x => x._list.AddRange(values));
    public static Instructions operator +(Instructions collection, string value) => collection.Action(x => x._list.Add(Create(value)));
    public static Instructions operator +(Instructions collection, InstructionType type) => collection.Action(x => x._list.Add(Create(type)));
    public static Instructions operator +(Instructions collection, (InstructionType type, string value) subject) => collection.Action(x => x._list.Add(Create(subject)));

    private static Instruction Create(string value) => new Instruction { Type = InstructionType.Code, Text = value };
    private static Instruction Create(InstructionType type) => new Instruction { Type = type };
    private static Instruction Create((InstructionType type, string value) subject) => new Instruction { Type = subject.type, Text = subject.value };
}
