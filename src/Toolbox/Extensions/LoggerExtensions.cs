using Microsoft.Extensions.Logging;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Toolbox.Tools;

namespace Toolbox.Extensions;

public static class LoggerExtensions
{
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
