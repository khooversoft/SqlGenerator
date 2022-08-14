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

internal class TemplateCommand : Command
{
    public TemplateCommand(IServiceProvider serviceProvider) : base("template", "Generate schema template file")
    {
        Argument<string> schemaFile = new Argument<string>("schemaFile", "Schema file to write to");

        AddArgument(schemaFile);

        this.SetHandler(async (string schemaFile) =>
        {
            await serviceProvider
                .GetRequiredService<TemplateActivity>()
                .Generate(schemaFile);

        }, schemaFile);
    }
}
