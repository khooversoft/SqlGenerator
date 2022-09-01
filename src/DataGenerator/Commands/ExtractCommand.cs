using DataGenerator.Activities;
using Microsoft.Extensions.DependencyInjection;
using System.CommandLine;

namespace DataGenerator.Commands;

internal class ExtractCommand : Command
{
    public ExtractCommand(IServiceProvider serviceProvider) : base("extract", "Extract data from excel")
    {
        Argument<string> inputFile = new("inputFile", "Data file to mask");
        Argument<string> outputFile = new("outputFile", "File to write masked data to");
        Option<string?> firstHeaderText = new("firstHeaderText", "Name of the first header, wild card can be used (default is 'load*'");

        AddArgument(inputFile);
        AddArgument(outputFile);
        AddOption(firstHeaderText);

        this.SetHandler(async (string inputFile, string outputFile, string? firstHeaderText) =>
        {
            await serviceProvider
                .GetRequiredService<ExtractActivity>()
                .Extract(inputFile, outputFile, firstHeaderText);

        }, inputFile, outputFile, firstHeaderText);
    }
}
