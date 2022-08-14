using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SqlGenerator.Activities;
using SqlGenerator.Commands;
using System.CommandLine;
using System.Reflection;

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

    try
    {
        using (ServiceProvider container = BuildContainer())
        {
            var rc = new RootCommand()
            {
                container.GetRequiredService<GenerateCommand>(),
                container.GetRequiredService<TemplateCommand>(),
            };

            return await rc.InvokeAsync(args);
        }
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

    service.AddSingleton<GenerateActivity>();
    service.AddSingleton<TemplateActivity>();

    service.AddSingleton<GenerateCommand>();
    service.AddSingleton<TemplateCommand>();

    return service.BuildServiceProvider();
}

