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
        Argument<string> sourceFile = new("sourceFile", "Source file used for based date");
        Argument<string?> folderPath = new("folderPath", "Path to folder to write test data, (default is sourceFile folder + '/data')");

        Option<int> count = new("--count", "Number of rows to generate (default = 20 million");
        count.SetDefaultValue(20_000_000);

        Option<int> pageSize = new("--pageSize", "Number of rows per file (default is 5 million");
        pageSize.SetDefaultValue(5_000_000);

        AddArgument(sourceFile);
        AddArgument(folderPath);
        AddOption(count);
        AddOption(pageSize);

        this.SetHandler(async (string sourceFile, string? folderPath, int count, int pageSize) =>
        {
            await serviceProvider
                .GetRequiredService<TestActivity>()
                .Generate(sourceFile, folderPath, count, pageSize);

        }, sourceFile, folderPath, count, pageSize);
    }
}
