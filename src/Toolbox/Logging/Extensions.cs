using Microsoft.Extensions.Logging;
using System.Diagnostics;
using System.Runtime.CompilerServices;
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

    public static T LogProperties<T>(this T value, string title, ILogger logger) where T : class
    {
        value.NotNull();
        title.NotEmpty();
        logger.NotNull();

        value.NotNull()
            .GetConfigurationValues()
            .Select(x => $"   {x.Key}={x.Value}")
            .Prepend(title.NotEmpty())
            .Join(Environment.NewLine)
            .Action(x => logger.LogInformation(x));

        return value;
    }

    public static IDisposable LogEntryExit(
        this ILogger logger,
        [CallerMemberName] string function = "",
        [CallerFilePath] string path = "",
        [CallerLineNumber] int lineNumber = 0
    )
    {
        logger
            .NotNull()
            .LogTrace("Enter: Method={method}, path={path}, line={lineNumber}", function, path, lineNumber);

        var sw = Stopwatch.StartNew();

        return new FinalizeScope(() =>
            logger.LogTrace("Exit: ms={ms} Method={method}, path={path}, line={lineNumber}", sw.ElapsedMilliseconds, function, path, lineNumber)
            );
    }
}
