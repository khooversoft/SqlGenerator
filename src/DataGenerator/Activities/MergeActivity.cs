using DataGenerator.Application;
using DataTools.sdk.Application;
using DataTools.sdk.Model;
using DataTools.sdk.Storage;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Data;
using SqlGenerator.sdk.Model;
using Toolbox.Data;
using Toolbox.Tools;

namespace DataGenerator.Activities;

internal partial class MergeActivity
{
    private readonly DataAnalysis _dataAnalysis;
    private readonly ILogger<MergeActivity> _logger;
    public MergeActivity(DataAnalysis dataAnalysis, ILogger<MergeActivity> logger)
    {
        _dataAnalysis = dataAnalysis.NotNull();
        _logger = logger.NotNull();
    }

    public async Task Run(string projectFile)
    {
        projectFile.NotEmpty();

        MergeProjectOption option = MergeProjectOptionFile.Read(projectFile);
        option.Files.Count.Assert(x => x > 0, $"There are no files to merge / analysis in project file {projectFile}");
        _logger.LogInformation("Running merge for project {file}", projectFile);

        IReadOnlyList<DataFileContent> files = await DataFile.ReadFiles(projectFile, option, _logger);

        var context = Context.Create(projectFile);
        IReadOnlyList<MappedDetail> mappedDetails = ReadMappedFile(context, option);

        StringTable table = BuildMergedTable(context, files, mappedDetails);

        CreateDataDictionary(context, option.TableName, table);

        _logger.LogInformation("Completed project {file}", projectFile);
    }

    private IReadOnlyList<MappedDetail> ReadMappedFile(Context context, MergeProjectOption option)
    {
        _logger.LogInformation("Reading mapped file {file}", option.MappedFile);
        IReadOnlyList<MappedDetail> mappedDetails = MappedFile.Read(option.MappedFile).ToMappedDetails();

        mappedDetails.Write(context.BuildFolder, _logger);
        return mappedDetails;
    }

    private StringTable BuildMergedTable(Context context, IReadOnlyList<DataFileContent> files, IReadOnlyList<MappedDetail> mappedDetails)
    {
        _logger.LogInformation("Merging data");
        var table = mappedDetails.Merge(files);

        _logger.LogInformation("Writing file {file}", context.MergedFile);
        table.WriteToCsv(context.MergedFile);
        return table;
    }

    private void CreateDataDictionary(Context context, string tableName, StringTable table)
    {
        AnalysisResult? analysis = _dataAnalysis.Run(tableName, table, null, 100);
        if (analysis == null)
        {
            _logger.LogError("Analysis failed");
            return;
        }

        _logger.LogInformation("Writing data dictionary to {file}", context.DictionaryFile);

        new DataDictionary
        {
            Items = analysis.TableInfos.ToArray(),
        }.Write(context.DictionaryFile);
    }

    private record Context
    {
        public string BuildFolder { get; init; } = null!;
        public string MergedFile { get; init; } = null!;
        public string DictionaryFile { get; init; } = null!;

        public static Context Create(string projectFile)
        {
            string buildFolder = Path.Combine(Path.GetDirectoryName(projectFile).NotEmpty(), "mergeBuild");
            string fileName = Path.GetFileName(projectFile);
            
            Directory.CreateDirectory(buildFolder);

            return new Context
            {
                BuildFolder = buildFolder,
                MergedFile = Path.Combine(buildFolder, PathTool.SetFileExtension(fileName, ".mergedTable.csv")),
                DictionaryFile = Path.Combine(buildFolder, PathTool.SetFileExtension(fileName, ".dataDictionary.csv")),
            };
        }
    }
}
