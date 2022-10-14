using DataGenerator.Activities;
using DataGenerator.Commands;
using DataTools.sdk.Storage;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Data;
using System.CommandLine;
using System.Reflection;
using Toolbox.Tools;

string _programTitle = $"Data Generator - Version {Assembly.GetExecutingAssembly().GetName().Version}";

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
        var rc = new RootCommand("Data utilities")
        {
            container.GetRequiredService<MaskCommand>(),
            container.GetRequiredService<ExtractCommand>(),
            container.GetRequiredService<MergeCommand>(),
            container.GetRequiredService<UpdateCommand>(),
            container.GetRequiredService<TestCommand>(),
        };

        int exitCode = await rc.InvokeAsync(args);
        await Task.Delay(TimeSpan.FromMilliseconds(200));

        Console.WriteLine();
        Console.WriteLine(exitCode == 0 ? "Completed" : $"Exit code={exitCode}");
        Console.WriteLine();

        return exitCode;
    }
    catch (Exception ex)
    {
        ILoggerFactory factory = container.GetService<ILoggerFactory>().NotNull();
        ILogger<Program> logger = factory.CreateLogger<Program>();
        logger.LogError(ex, "Failed");
        return 1;
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

    service.AddSingleton<ExcelFile>();
    service.AddSingleton<DataAnalysis>();

    service.AddSingleton<MaskActivity>();
    service.AddSingleton<ExtractActivity>();
    service.AddSingleton<MergeActivity>();
    service.AddSingleton<UpdateActivity>();
    service.AddSingleton<TestActivity>();

    service.AddSingleton<MaskCommand>();
    service.AddSingleton<ExtractCommand>();
    service.AddSingleton<MergeCommand>();
    service.AddSingleton<UpdateCommand>();
    service.AddSingleton<TestCommand>();

    return service.BuildServiceProvider();
}

