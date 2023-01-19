using System.CommandLine;
using System.Reflection;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SqlGenerator.Activities;
using SqlGenerator.Commands;
using SqlGenerator.sdk;
using Toolbox.Logging;
using Toolbox.Tools;

string _programTitle = $"SQL Code Generator - Version {Assembly.GetExecutingAssembly().GetName().Version}";
string _loggingFolder = Path.Combine(Path.GetTempPath(), Assembly.GetExecutingAssembly().GetName().Name.NotEmpty());

try
{
    return await Run(args);
}
catch (Exception ex)
{
    Console.WriteLine($"Error: {ex.Message}");
    return 1;
}

async Task<int> Run(string[] args)
{
    Console.WriteLine(_programTitle);
    Console.WriteLine();

    using ServiceProvider container = BuildContainer();

    var rc = new RootCommand("Generator SQL code from table and column dataset.")
    {
        container.GetRequiredService<BuildCommand>(),
    };

    int exitCode = await rc.InvokeAsync(args);
    await Task.Delay(TimeSpan.FromMilliseconds(200));

    Console.WriteLine();
    Console.WriteLine($"Detail logs are at {_loggingFolder}");
    Console.WriteLine();

    return exitCode;
}

ServiceProvider BuildContainer()
{
    var service = new ServiceCollection();

    service.AddLogging(x =>
    {
        x.AddConsole();
        x.AddDebug();

        x.AddFileLogger(_loggingFolder, "SqlGenerator_log_");
        x.AddFileLoggerFilter(x => true);
    });

    service.AddSingleton<BuildActivity>();
    service.AddProjectBuild();

    service.AddSingleton<BuildCommand>();

    return service.BuildServiceProvider();
}

