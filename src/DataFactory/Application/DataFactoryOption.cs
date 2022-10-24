using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataFactory.Application;

public record DataFactoryOption
{
    public IReadOnlyList<IncludeOption> Include { get; set; } = Array.Empty<IncludeOption>();
    public SourceOption Source { get; set; } = null!;
    public SyncOption Sync { get; set; } = null!;
    public string MappingFile { get; set; } = null!;
    public BuildOption Build { get; set; } = null!;
}

internal record DataFactoryOptionModel
{
    public List<IncludeOption> Include { get; set; } = new List<IncludeOption>();
    public SourceOption Source { get; set; } = null!;
    public SyncOption Sync { get; set; } = null!;
    public string MappingFile { get; set; } = null!;
    public BuildOption Build { get; set; } = null!;
}



public static class DataFactoryOptionFile
{
    public static DataFactoryOption Verify(this DataFactoryOption subject)
    {
        subject.NotNull();
        subject.Include.NotNull();
        subject.Source.Verify();
        subject.Sync.Verify();
        subject.MappingFile.NotEmpty();
        subject.Build.Verify();

        return subject;
    }

    internal static DataFactoryOption ConvertTo(this DataFactoryOptionModel model)
    {
        return new DataFactoryOption
        {
            Include = model.Include.ToArray(),
            Source = model.Source,
            Sync = model.Sync,
            MappingFile = model.MappingFile,
            Build = model.Build,
        };
    }

    public static DataFactoryOption Read(string file) => File.ReadAllText(file)
        .NotNull()
        .ToObject<DataFactoryOptionModel>()
        .NotNull()
        .ConvertTo();

    public static async Task Write(this DataFactoryOption subject, string file)
    {
        subject.Verify();

        string yaml = subject.ToYaml();
        await File.WriteAllTextAsync(file, yaml);
    }
}