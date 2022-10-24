using DataGenerator.Activities;
using Microsoft.Extensions.DependencyInjection;
using System.CommandLine;

namespace DataGenerator.Commands;

internal class CreateDictionaryCommand : Command
{
    public CreateDictionaryCommand(IServiceProvider serviceProvider) : base("createDictionary", "Create data dictionary from data source")
    {
        Argument<string> dataFile = new("dataFile", "Data file to create dictionary from");

        AddArgument(dataFile);

        this.SetHandler(async (string dataFile) =>
        {
            await serviceProvider
                .GetRequiredService<CreateDataDictionaryActivity>()
                .Build(dataFile);

        }, dataFile);
    }
}
