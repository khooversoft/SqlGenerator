using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlGenerator.sdk.Generator;

public static class Extensions
{
    public static Instructions Build(this PhysicalModel model) => new InstructionBuilder(model).Build();
}
