﻿using System.Reflection;
using System;
using Microsoft.Extensions.DependencyInjection;
using System.CommandLine;
using DataGenerator.Commands;
using Toolbox.Tools;
using Microsoft.Extensions.Logging;
using DataGenerator.Activities;
using SqlGenerator.sdk.Excel;

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

    service.AddSingleton<ReadExcelSheet>();

    service.AddSingleton<MaskActivity>();
    service.AddSingleton<ExtractActivity>();

    service.AddSingleton<MaskCommand>();
    service.AddSingleton<ExtractCommand>();

    return service.BuildServiceProvider();
}
