using Microsoft.Extensions.Logging;
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
}
