using Microsoft.Extensions.Logging;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace Toolbox.Logging;

public static class Extensions
{
    public static ILoggingBuilder AddFileLogger(this ILoggingBuilder builder, string loggingFolder, string baseLogFileName, int limit = 10)
    {
        builder.NotNull();
        loggingFolder.NotEmpty();
        baseLogFileName.NotEmpty();

        builder.AddProvider(new FileLoggerProvider(loggingFolder, baseLogFileName, limit));
        return builder;
    }

    public static ILoggingBuilder AddFileLoggerFilter(this ILoggingBuilder builder, Func<LogLevel, bool> levelFilter)
    {
        builder.NotNull();

        builder.AddFilter<FileLoggerProvider>(levelFilter);
        return builder;
    }

    public static void LogProperties<T>(this ILogger logger, string title, T value) where T : class =>
        value.NotNull().GetConfigurationValues()
            .Select(x => $"   {x.Key}={x.Value}")
            .Prepend(title.NotEmpty())
            .Join(Environment.NewLine)
            .Action(x => logger.LogInformation(x));

    public static void LogProperties<T>(this T value, string title, ILogger logger) where T : class => logger.NotNull().LogProperties(title, value);
}
