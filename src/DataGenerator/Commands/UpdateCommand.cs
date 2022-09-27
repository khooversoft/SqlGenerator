using DataGenerator.Activities;
using DataGenerator.Application;
using Microsoft.Extensions.DependencyInjection;
using System.CommandLine;
using System.Net.Sockets;

namespace DataGenerator.Commands;

internal class UpdateCommand : Command
{
    public UpdateCommand(IServiceProvider serviceProvider) : base("update", "Update data dictionary")
    {
        Argument<string> optionFile = new("optionFile", "Option file for update");
        Option<bool?> whatIf = new("--whatIf", "Only performance analysis, project file and current source will not be updated");

        AddArgument(optionFile);
        AddOption(whatIf);

        this.SetHandler(async (string optionFile, bool? whatIf) =>
        {
            await serviceProvider
                .GetRequiredService<UpdateActivity>()
                .Update(optionFile, whatIf ?? false);

        }, optionFile, whatIf);
    }
}
