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

        AddArgument(optionFile);

        this.SetHandler(async (string optionFile) =>
        {
            UpdateOption updateOption = UpdateOptionFile.Read(optionFile);

            await serviceProvider
                .GetRequiredService<UpdateActivity>()
                .Update(updateOption);

        }, optionFile);
    }
}
