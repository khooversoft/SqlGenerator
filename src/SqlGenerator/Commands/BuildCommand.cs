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
    public BuildCommand(IServiceProvider serviceProvider) : base("Build", "Build SQL DLL schema")
    {
        Argument<string> projectFile = new ("projectFile", "Project file (.json)");
        Option<bool?> force = new ("--force", "Force build");
        Option<bool?> useSource = new ("--useSource", "Use source file instead of master");

        AddArgument(projectFile);
        AddOption(force);
        AddOption(useSource);

        this.SetHandler(async (string projectFile, bool? force, bool? useSource) =>
        {
            await serviceProvider
                .GetRequiredService<BuildActivity>()
                .Generate(projectFile, force ?? false, useSource ?? false);

        }, projectFile, force, useSource);
    }
}
