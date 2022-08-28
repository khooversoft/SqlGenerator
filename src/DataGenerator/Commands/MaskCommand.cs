using DataGenerator.Activities;
using Microsoft.Extensions.DependencyInjection;
using System.CommandLine;

namespace DataGenerator.Commands;

internal class MaskCommand : Command
{
    public MaskCommand(IServiceProvider serviceProvider) : base("mask", "Mask columns in CSV data file")
    {
        Argument<string> inputFile = new("inputFile", "Data file to mask");
        Argument<string> outputFile = new("outputFile", "File to write masked data to");
        Argument<string> maskOptionFile = new("maskOptionFile", "File that has masked configuration");

        AddArgument(inputFile);
        AddArgument(outputFile);
        AddArgument(maskOptionFile);

        this.SetHandler(async (string inputFile, string outputFile, string maskOptionFile) =>
        {
            await serviceProvider
                .GetRequiredService<MaskActivity>()
                .Mask(inputFile, outputFile, maskOptionFile);

        }, inputFile, outputFile, maskOptionFile);
    }
}
