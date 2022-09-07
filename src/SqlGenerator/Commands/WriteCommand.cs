using Microsoft.Extensions.DependencyInjection;
using SqlGenerator.Activities;
using System.CommandLine;
using Toolbox.Tools;

namespace SqlGenerator.Commands;

internal class WriteCommand : Command
{
    public WriteCommand(IServiceProvider serviceProvider) : base("write", "Generate default build configuration")
    {
        serviceProvider.NotNull();

        AddCommand(SchemaOption(serviceProvider));
        AddCommand(ClassiciationOption(serviceProvider));
    }

    private Command SchemaOption(IServiceProvider serviceProvider)
    {
        Argument<string> configFile = new Argument<string>("configFile", "File name to write to");
        Argument<string> modelName = new Argument<string>("modelName", "Name of the model");

        var command = new Command("Schema", "Write default schema to file")
        {
            configFile,
            modelName,
        };
        
        command.SetHandler(async (string configFile, string modelName) =>
        {
            await serviceProvider
                .GetRequiredService<DefaultOptionActivity>()
                .WriteDefaultSchemaOption(configFile, modelName);

        }, configFile, modelName);

        return command;
    }

    private Command ClassiciationOption(IServiceProvider serviceProvider)
    {
        Argument<string> configFile = new Argument<string>("configFile", "File name to write to");

        var command = new Command("classification", "Write default classification to file")
        {
            configFile,
        };
        
        command.SetHandler(async (string configFile) =>
        {
            await serviceProvider
                .GetRequiredService<DefaultOptionActivity>()
                .WriteDefaultClassificationOption(configFile);

        }, configFile);

        return command;
    }
}
