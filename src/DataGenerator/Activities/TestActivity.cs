using DataTools.sdk.Storage;
using Microsoft.Extensions.Logging;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace DataGenerator.Activities;

public class TestActivity
{
    private readonly ILogger<TestActivity> _logger;
    public TestActivity(ILogger<TestActivity> logger) => _logger = logger;

    public async Task Generate(string sourceFile, string? folderPath, int count, int pageSize)
    {
        sourceFile.NotEmpty();

        var context = new Context
        {
            SourceFile = sourceFile,
            FolderPath = folderPath ?? Path.Combine(Path.GetDirectoryName(sourceFile).NotEmpty(), "data"),
            Count = count,
            PageSize = pageSize,
        }.LogProperties("Generating data", _logger);

        IReadOnlyList<DataRecord> baseData = ReadSourceFile(context);
        IReadOnlyList<DataRecord> generatedData = GenerateData(context, baseData);
        await WriteData(context, generatedData);

        _logger.LogInformation("Completed");
    }

    private async Task WriteData(Context context, IReadOnlyList<DataRecord> generatedData)
    {
        DirectoryTool.ClearDirectory(context.FolderPath);
        string baseFile = Path.GetFileNameWithoutExtension(context.SourceFile).NotEmpty();
        string extension = Path.GetExtension(context.SourceFile);

        _logger.LogInformation("Writing generated data based on page size {pageSize}", context.PageSize);

        Task[] groups = generatedData
            .Chunk(context.PageSize)
            .Select((x, i) => WriteData(Path.Combine(context.FolderPath, $"{baseFile}-{i}{extension}"), x))
            .ToArray();

        await Task.WhenAll(groups);
    }

    private Task WriteData(string file, IReadOnlyList<DataRecord> data)
    {
        return Task.Run(() =>
        {
            _logger.LogInformation("Writing {file}, count={count}", file, data.Count);
            CsvFile.Write(file, data);
        });
    }

    private IReadOnlyList<DataRecord> GenerateData(Context context, IReadOnlyList<DataRecord> baseData)
    {
        int index = 0;
        int yearOffset = 10;

        List<DataRecord> list = new();

        while (list.Count < context.Count)
        {
            if (index >= baseData.Count)
            {
                index = 0;
                yearOffset++;
            }

            var writeRecord = baseData[index]
                .Func(x => x with { Date = new DateTime(x.Date.Year - yearOffset, x.Date.Month, Math.Min(28, x.Date.Day)) });

            list.Add(writeRecord);
            index++;
        }

        _logger.LogInformation("Generated {count} data records", list.Count);

        return list
            .OrderBy(x => x.Date)
            .ToArray();
    }

    private IReadOnlyList<DataRecord> ReadSourceFile(Context context) =>
        CsvFile.Read<DataRecord>(context.SourceFile)
        .Action(x => _logger.LogInformation("Read {file}, count={count}", context.SourceFile, x.Count));

    private record Context
    {
        public string SourceFile { get; init; } = null!;
        public string FolderPath { get; init; } = null!;
        public int Count { get; init; }
        public int PageSize { get; init; }
    }

    private record DataRecord
    {
        public DateTime Date { get; init; }
        public string Description { get; init; } = null!;
        public decimal Deposits { get; init; }
        public decimal Withdrawls { get; init; }
        public decimal Balance { get; init; }
    }
}
