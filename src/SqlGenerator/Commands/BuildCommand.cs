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
        Argument<string> projectFile = new Argument<string>("projectFile", "Project file (.json)");
        Argument<string> outputFolder = new Argument<string>("folder", "Folder to write repository (model, *.sql, etc...)");

        AddArgument(projectFile);
        AddArgument(outputFolder);

        this.SetHandler(async (string projectFile, string outputFolder) =>
        {
            await serviceProvider
                .GetRequiredService<BuildActivity>()
                .Generate(projectFile, outputFolder);

        }, projectFile, outputFolder);
    }
}
