using Microsoft.Extensions.DependencyInjection;
using SqlGenerator.Activities;
using System;
using System.Collections.Generic;
using System.CommandLine;
using System.CommandLine.Invocation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.Commands;

internal class WriteCommand : Command
{
    public WriteCommand(IServiceProvider serviceProvider) : base("write", "Generate default build configuration")
    {
        serviceProvider.NotNull();
        Argument<string> configFile = new Argument<string>("configFile", "File name to write to");

        AddCommand(Option(serviceProvider));
        AddCommand(Template(serviceProvider));
    }

    private Command Option(IServiceProvider serviceProvider)
    {
        Argument<string> configFile = new Argument<string>("configFile", "File name to write to");
        Argument<string> modelName = new Argument<string>("modelName", "Name of the model");

        var command = new Command("option", "Write default options to file")
        {
            configFile,
            modelName,
        };
        
        command.SetHandler(async (string configFile, string modelName) =>
        {
            await serviceProvider
                .GetRequiredService<ImportOptionActivity>()
                .Generate(configFile, modelName);

        }, configFile, modelName);

        return command;
    }

    private Command Template(IServiceProvider serviceProvider)
    {
        Argument<string> configFile = new Argument<string>("file", "File name to write to");

        var command = new Command("template", "Write template for model to file")
        {
            configFile,
        };
        
        command.SetHandler(async (string configFile) =>
        {
            await serviceProvider
                .GetRequiredService<TemplateActivity>()
                .Generate(configFile);

        }, configFile);

        return command;
    }
}
