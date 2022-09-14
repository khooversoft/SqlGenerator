using DataGenerator.Activities;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.CommandLine;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataGenerator.Commands;

public class TestCommand : Command
{
    public TestCommand(IServiceProvider serviceProvider) : base("test", "Generate test data")
    {
        Argument<string> dataDictionaryFile = new("dataDictionaryFile", "Data dictionary to create test data for");
        Argument<string> folderPath = new("folderPath", "Path to folder to write test data");

        Option<int> count = new("--count", "Number of rows to generate (default = 5 million");
        count.SetDefaultValue(5 - 000 - 000);

        Option<int> pageSize = new("--pageSize", "Number of rows per file (default is 5 million_");
        pageSize.SetDefaultValue(1 - 000 - 000);

        Option<string> delimiter = new("--delimiter", "Delimiter to use (default = ','");
        delimiter.SetDefaultValue(",");

        AddArgument(dataDictionaryFile);
        AddArgument(folderPath);
        AddOption(count);
        AddOption(pageSize);
        AddOption(delimiter);

        this.SetHandler(async (string dataDictionaryFile, string folderPath, int count, int pageSize, string delimiter) =>
        {
            await serviceProvider
                .GetRequiredService<TestActivity>()
                .Generate(dataDictionaryFile, folderPath, count, pageSize, delimiter);

        }, dataDictionaryFile, folderPath, count, pageSize, delimiter);
    }
}
