using DataFactory.sdk.Model;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFactory.sdk.Service;

public enum SourceFolder
{
    Dataflow,
    Dataset,
    Factory,
    LinkedService,
    Pipeline,
    Trigger,
}

public class SourceRepositoryService
{
    private readonly ILogger<SourceRepository> _logger;

    public SourceRepositoryService(ILogger<SourceRepository> logger) => _logger = logger;

    //public async Task<SourceRepository> Read(string sourceFolder)
    //{
    //}

    //private async Task<IReadOnlyList<T>> ReadFolder<T>(string folderPath)
    //{
    //    string[] files = Directory.GetFiles(folderPath, "*.yaml", SearchOption.AllDirectories);
    //}
}


public record SourceRepository
{
    public IReadOnlyList<DatasetModel>? Dataset { get; init; }
    public IReadOnlyList<FactoryModel>? Factory { get; init; }
    public IReadOnlyList<DataflowModel>? Dataflow { get; init; }
    public IReadOnlyList<LinkedServiceModel>? LinkedService { get; init; }
    public IReadOnlyList<PipelineModel>? Pipeline { get; init; }
    public IReadOnlyList<TriggerModel>? Trigger { get; init; }
}
