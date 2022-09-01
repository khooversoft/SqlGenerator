using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.CommandLine;
using Microsoft.Extensions.DependencyInjection;
using DataFactory.Activities;

namespace DataFactory.Commands;

internal class BuildCommand : Command
{
    public BuildCommand(IServiceProvider serviceProvider) : base("build", "Build data factory project")
    {
        Argument<string> projectFile = new("projectFile", "Project file to build");

        AddArgument(projectFile);

        this.SetHandler(async (string projectFile) =>
        {
            await serviceProvider
                .GetRequiredService<BuildActivity>()
                .Build(projectFile);

        }, projectFile);
    }
}
