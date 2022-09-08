using DataGenerator.Activities;
using Microsoft.Extensions.DependencyInjection;
using System.CommandLine;

namespace DataGenerator.Commands;

internal class ExtractCommand : Command
{
    public ExtractCommand(IServiceProvider serviceProvider) : base("extract", "Extract data from excel")
    {
        Argument<string> inputFile = new("inputFile", "Data file to mask");
        Argument<string> tableName = new("tableName", "Name of table");
        Option<string?> firstHeaderText = new("firstHeaderText", "Name of the first header, wild card can be used (default is 'load*')");
        Option<int?> minCharLength = new("--minCharLength", "Min character length for char(n) or varchar(n)");
        Option<string?> delimiter = new("--delimiter", "Use delimiter (default is ',')");

        AddArgument(inputFile);
        AddArgument(tableName);
        AddOption(firstHeaderText);
        AddOption(minCharLength);
        AddOption(delimiter);

        this.SetHandler(async (string inputFile, string tableName, string? firstHeaderText, int? minCharLength, string? delimiter) =>
        {
            await serviceProvider
                .GetRequiredService<ExtractActivity>()
                .Extract(inputFile, tableName, firstHeaderText, minCharLength, delimiter);

        }, inputFile, tableName, firstHeaderText, minCharLength, delimiter);
    }
}
