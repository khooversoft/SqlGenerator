using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SqlGenerator.Activities;
using SqlGenerator.Commands;
using SqlGenerator.sdk.Project;
using SqlGenerator.sdk.Project.Activities;
using System.CommandLine;
using System.Reflection;
using Toolbox.Logging;
using Toolbox.Tools;

string _programTitle = $"SQL Code Generator - Version {Assembly.GetExecutingAssembly().GetName().Version}";
string _loggingFolder = Path.Combine(Path.GetTempPath(), Assembly.GetExecutingAssembly().GetName().Name.NotEmpty());

try
{
    return await Run(args);
}
catch (ArgumentException ex)
{
    Console.WriteLine($"Error: {ex.Message}");
    return 1;
}

async Task<int> Run(string[] args)
{
    Console.WriteLine(_programTitle);
    Console.WriteLine();

    using ServiceProvider container = BuildContainer();

    try
    {
        var rc = new RootCommand("Generator SQL code from table and column dataset.")
        {
            container.GetRequiredService<BuildCommand>(),
            container.GetRequiredService<ProjectCommand>(),
            container.GetRequiredService<WriteCommand>(),
        };

        return await rc.InvokeAsync(args);
    }
    catch (Exception ex)
    {
        ILoggerFactory factory = container.GetService<ILoggerFactory>().NotNull();
        ILogger<Program> logger = factory.CreateLogger<Program>();
        logger.LogError(ex, "Failed");
        return 1;
    }
    finally
    {
        Console.WriteLine();
        Console.WriteLine("Completed");
        Console.WriteLine($"Detail logs are at {_loggingFolder}");
    }
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

    service.AddSingleton<ProjectOptionActivity>();
    service.AddSingleton<BuildActivity>();
    service.AddSingleton<ImportOptionActivity>();
    service.AddSingleton<MergeActivity>();
    service.AddProjectBuild();

    service.AddSingleton<BuildCommand>();
    service.AddSingleton<ProjectCommand>();
    service.AddSingleton<WriteCommand>();

    return service.BuildServiceProvider();
}

