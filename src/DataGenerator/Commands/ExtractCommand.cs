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
        Argument<string> tableName = new("tableName", "Name of table");
        Option<string?> firstHeaderText = new("firstHeaderText", "Name of the first header, wild card can be used (default is 'load*')");
        Option<int?> minCharLength = new("minCharLength", "Min character length for char(n) or varchar(n)");

        AddArgument(inputFile);
        AddArgument(outputFile);
        AddArgument(tableName);
        AddOption(firstHeaderText);
        AddOption(minCharLength);

        this.SetHandler(async (string inputFile, string outputFile, string tableName, string? firstHeaderText, int? minCharLength) =>
        {
            await serviceProvider
                .GetRequiredService<ExtractActivity>()
                .Extract(inputFile, outputFile, tableName, firstHeaderText, minCharLength);

        }, inputFile, outputFile, tableName, firstHeaderText, minCharLength);
    }
}
