using DataFactory.Application;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFactory.Activities;

internal class BuildActivity
{
    private readonly ILogger<BuildActivity> _logger;
    public BuildActivity(ILogger<BuildActivity> logger) => _logger = logger;

    public Task Build(string projectFile)
    {
        DataFactoryOption dataFactoryOption = DataFactoryOptionFile.Read(projectFile);

        return Task.CompletedTask;
    }
}
