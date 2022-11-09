using Microsoft.Extensions.DependencyInjection;
using SqlGenerator.Activities;
using System;
using System.Collections.Generic;
using System.CommandLine;
using System.CommandLine.Invocation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlGenerator.Commands;

internal class BuildCommand : Command
{
    public BuildCommand(IServiceProvider serviceProvider) : base("build", "Build SQL DLL schema")
    {
        Argument<string> projectFile = new ("projectFile", "Project file (.json)");

        AddArgument(projectFile);

        this.SetHandler(async (string projectFile) =>
        {
            await serviceProvider
                .GetRequiredService<BuildActivity>()
                .Generate(projectFile);

        }, projectFile);
    }
}
