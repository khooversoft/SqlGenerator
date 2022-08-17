using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SqlGenerator.Activities;
using SqlGenerator.Commands;
using System.CommandLine;
using System.Reflection;
using Toolbox.Tools;

string _programTitle = $"Property Database CLI - Version {Assembly.GetExecutingAssembly().GetName().Version}";

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
        var rc = new RootCommand()
        {
            container.GetRequiredService<BuildCommand>(),
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
    }
}

ServiceProvider BuildContainer()
{
    var service = new ServiceCollection();

    service.AddLogging(x =>
    {
        x.AddConsole();
        x.AddDebug();
    });

    service.AddSingleton<BuildActivity>();
    service.AddSingleton<TemplateActivity>();
    service.AddSingleton<ImportOptionActivity>();

    service.AddSingleton<BuildCommand>();
    service.AddSingleton<WriteCommand>();

    return service.BuildServiceProvider();
}

