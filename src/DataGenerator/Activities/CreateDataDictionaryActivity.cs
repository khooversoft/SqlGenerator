using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace DataGenerator.Activities;

public class CreateDataDictionaryActivity
{
    private readonly ILogger<CreateDataDictionaryActivity> _logger;

    public CreateDataDictionaryActivity(ILogger<CreateDataDictionaryActivity> logger) => _logger = logger.NotNull();

    public Task Build(string dataFile)
    {
        dataFile.NotEmpty();
        _logger.LogInformation("Reading data file {file}", dataFile);

        return Task.CompletedTask; 
    }
}
