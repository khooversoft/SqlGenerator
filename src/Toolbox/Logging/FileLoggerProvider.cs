using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading.Tasks.Dataflow;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace Toolbox.Logging;

public class FileLoggerProvider : ILoggerProvider
{
    private readonly string _baseFileName;
    private readonly int _limit;
    private readonly string _loggingFileName;
    private readonly string _loggingFolder;
    private StreamWriter _logFile = null!;
    private ActionBlock<string> _output = null!;

    public FileLoggerProvider(string loggingFolder, string baseLogFileName, int limit = 10)
    {
        loggingFolder.NotEmpty();
        baseLogFileName.NotEmpty();
        limit.Assert(x => x > 0, "Limit must be greater then 0");

        _loggingFolder = loggingFolder;
        _baseFileName = baseLogFileName;
        _limit = limit;

        _loggingFileName = Path.Combine(_loggingFolder, $"{_baseFileName}_{GetTimestampInFormat()}.log");

        Initialize();
    }

    public ILogger CreateLogger(string categoryName) => new TargetBlockLogger(categoryName, _output);

    public void Dispose()
    {
        StreamWriter streamWriter = Interlocked.Exchange(ref _logFile, null!);
        if (streamWriter != null)
        {
            _output.Complete();
            _output.Completion.Wait();

            streamWriter.Dispose();
        }
    }

    private static string GetTimestampInFormat() => DateTime.Now.ToString("o").Replace('.', '_').Replace(':', '_');

    private void Initialize()
    {
        Directory.CreateDirectory(_loggingFolder);

        Directory.GetFiles(_loggingFolder, $"{_baseFileName}*.log")
            .OrderByDescending(x => x)
            .Skip(_limit)
            .ForEach(x => File.Delete(x));

        _logFile = new StreamWriter(_loggingFileName);
        _logFile.AutoFlush = true;

        _output = new ActionBlock<string>(x =>
        {
            switch (x.EndsWith(Environment.NewLine))
            {
                case true:
                    _logFile.Write(x);
                    break;

                default:
                    _logFile.WriteLine(x);
                    break;
            }
        });
    }
}