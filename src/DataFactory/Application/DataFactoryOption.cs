using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataFactory.Application;

public record DataFactoryOption
{
    public string SourceFolder { get; init; } = null!;
    public string BuildFolder { get; init; } = null!;
}


public static class DataFactoryOptionFile
{
    public static DataFactoryOption Verify(this DataFactoryOption subject)
    {
        subject.NotNull();
        subject.SourceFolder.NotEmpty();
        subject.BuildFolder.NotEmpty();

        return subject;
    }

    public static DataFactoryOption Read(string file) => File.ReadAllText(file)
        .NotNull()
        .ToObject<DataFactoryOption>()
        .NotNull();

    public static async Task Write(this DataFactoryOption subject, string file)
    {
        subject.Verify();

        string yaml = subject.ToYaml();
        await File.WriteAllTextAsync(file, yaml);
    }
}