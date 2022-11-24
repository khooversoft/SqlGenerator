using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SqlGenerator.Activities;
using System;
using System.Collections.Generic;
using System.CommandLine;
using System.CommandLine.Invocation;
using System.ComponentModel;
using System.Linq;
using System.Runtime.ExceptionServices;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.Commands;

internal class BuildCommand : Command
{
    public BuildCommand(ILogger<BuildCommand> logger, IServiceProvider serviceProvider) : base("build", "Build SQL DLL schema")
    {
        Argument<string> projectFile = new("projectFile", "Project file (.json)");

        AddArgument(projectFile);

        this.SetHandler(async (string projectFile) =>
        {
            try
            {
                await serviceProvider
                    .GetRequiredService<BuildActivity>()
                    .Generate(projectFile);
            }
            catch (ArgumentException ex)
            {
                logger.LogError("Failed: {error}", ex.Message);
            }
            catch (Exception ex)
            {
                logger.LogError(ex, "Unknown exception");
                throw;
            }
        }, projectFile);
    }
}
