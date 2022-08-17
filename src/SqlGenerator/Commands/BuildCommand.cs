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
        Argument<string> sourceFile = new Argument<string>("sourceFile", "Source {model}.json or {data}.csv");
        Argument<string> outputFolder = new Argument<string>("folder", "Folder to write repository (model, *.sql, etc...)");

        Option<string?> optionFile = new Option<string?>("--option", "Use option file, default=internal");

        AddArgument(sourceFile);
        AddArgument(outputFolder);
        AddOption(optionFile);

        this.SetHandler(async (string sourceFile, string outputFolder, string? optionFile) =>
        {
            await serviceProvider
                .GetRequiredService<BuildActivity>()
                .Generate(sourceFile, outputFolder, optionFile);

        }, sourceFile, outputFolder, optionFile);
    }
}
