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

internal class GenerateCommand : Command
{
    public GenerateCommand(IServiceProvider serviceProvider) : base("generate", "Generate SQL DLL from schema file")
    {
        Argument<string> schemaFile = new Argument<string>("schemaFile", "Schema file to read");
        Argument<string> sqlDllFile = new Argument<string>("sqlDllFile", "SQL DLL file to write to");

        AddArgument(schemaFile);
        AddArgument(sqlDllFile);

        this.SetHandler(async (string schemaFile, string sqlDllFile) =>
        {
            await serviceProvider
                .GetRequiredService<GenerateActivity>()
                .Generate(schemaFile, sqlDllFile);

        }, schemaFile, sqlDllFile);
    }
}
