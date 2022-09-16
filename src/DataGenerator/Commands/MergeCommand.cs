using DataGenerator.Activities;
using Microsoft.Extensions.DependencyInjection;
using System.CommandLine;

namespace DataGenerator.Commands;

internal class MergeCommand : Command
{
    public MergeCommand(IServiceProvider serviceProvider) : base("merge", "Create merged data dictionary from multiple data files")
    {
        Argument<string> inputFile = new("projectFile", "Project file for merge analysis");

        AddArgument(inputFile);

        this.SetHandler(async (string projectFile) =>
        {
            await serviceProvider
                .GetRequiredService<MergeActivity>()
                .Run(projectFile);

        }, inputFile);
    }
}
