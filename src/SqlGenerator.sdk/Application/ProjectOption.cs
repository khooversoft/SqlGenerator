using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ProjectOption
{
    public string Name { get; init; } = null!;
    public string SourceFile { get; init; } = null!;
    public string OptionFile { get; init; } = null!;
    public string NameMapFile { get; init; } = null!;
    public string MasterTableFile { get; init; } = null!;
}


public static class ProjectOptionExtensions
{
    public static ProjectOption Verify(this ProjectOption? subject)
    {
        subject.NotNull();
        subject.Name.NotEmpty();
        subject.SourceFile.NotEmpty();
        subject.OptionFile.NotEmpty();
        subject.NameMapFile.NotEmpty();
        subject.MasterTableFile.NotEmpty();

        return subject;
    }

    public static ImportOption LoadOption(this ProjectOption project)
    {
        project.OptionFile.Assert(x => File.Exists(x), x => $"File {x} does not exist");
        project.NameMapFile.Assert(x => File.Exists(x), x => $"File {x} does not exist");
        project.MasterTableFile.Assert(x => File.Exists(x), x => $"File {x} does not exist");

        ImportOptionModel importOptionModel = File.ReadAllText(project.OptionFile)
            .ToObject<ImportOptionModel>()
            .NotNull();

        IReadOnlyList<NameMapRecord> nameMapRecords = File.ReadAllText(project.NameMapFile)
            .ToObject<IReadOnlyList<NameMapRecord>>()
            .NotNull();

        IReadOnlyList<string> masterTableFile = File.ReadAllText(project.MasterTableFile)
            .ToObject<IReadOnlyList<string>>()
            .NotNull();

        return importOptionModel.ConvertTo(project.Name, nameMapRecords, masterTableFile);
    }
}