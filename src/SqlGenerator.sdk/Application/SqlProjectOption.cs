using DataTools.sdk.Model;
using DocumentFormat.OpenXml;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Model;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record SqlProjectOption
{
    public string ProjectOptionFile { get; init; } = null!;
    public IList<string> IncludeFiles { get; init; } = Array.Empty<string>();

    public string? SourceFile { get; init; }
    public string? BuildFolder { get; init; }
    public string? TableTypeMetadata { get; init; }
    public UspLoadTableOption? UspLoadTableOption { get; init; }
    public RawToCultivatedOption? RawToCultivated { get; init; }
    public IList<SchemaModel> Schemas { get; init; } = new List<SchemaModel>();
    public IList<ColumnModel> PrefixColumns { get; init; } = new List<ColumnModel>();
    public IList<ColumnModel> SufixColumns { get; init; } = new List<ColumnModel>();
    public IList<NameMapRecord> NameMap { get; init; } = new List<NameMapRecord>();
    public IList<ClassificationRecord> Protection { get; init; } = new List<ClassificationRecord>();
    public IList<string> UpdateCommands { get; init; } = new List<string>();
    public IList<CommandOption> CommandOptions { get; init; } = new List<CommandOption>();
    public IList<AddInstruction> AddInstructions { get; init; } = new List<AddInstruction>();
}


public static class SqlProjectOptionFile
{
    public static SqlProjectOption Read(string projectFile)
    {
        IncludeOption include = IncludeOptionFile.Read(projectFile);

        return new ConfigurationBuilder()
            .Action(x => include.IncludeFiles.ForEach(y => x.AddJsonFile(PathTool.ToFullPath(projectFile, y))))
            .AddJsonFile(projectFile)
            .Build()
            .Bind<SqlProjectOption>()
            .Verify()
            .Func(x => x with
            {
                ProjectOptionFile = projectFile,
                SourceFile = PathTool.ToFullPath(projectFile, x.SourceFile),
                TableTypeMetadata = PathTool.ToFullPath(projectFile, x.TableTypeMetadata),
                CommandOptions = x.UpdateCommands
                    .Select(y => CommandOption.Create(y) switch
                    {
                        CommandOption v when v.Type == CommandType.XRefTable => v with { Pattern = PathTool.ToFullPath(projectFile, v.Pattern) },
                        CommandOption v => v,
                    })
                    .ToArray(),
            });
    }

    public static SqlProjectOption Verify(this SqlProjectOption? subject)
    {
        subject.NotNull();
        subject.UspLoadTableOption?.Verify();
        subject.RawToCultivated?.Verify();

        subject.Schemas.NotNull().ForEach(x => x.Verify());
        subject.PrefixColumns.NotNull().ForEach(x => x.Verify());
        subject.SufixColumns.NotNull().ForEach(x => x.Verify());
        subject.NameMap.NotNull().ForEach(x => x.Verify());
        subject.UpdateCommands.NotNull().ForEach(x => CommandOptionTool.IsValid(x).Assert(y => y == true, y => $"Syntax error: {x}"));
        subject.AddInstructions.NotNull().ForEach(x => x.Verify());

        return subject;
    }

    public static async Task Write(this SqlProjectOption projectOption, string file)
    {
        projectOption.NotNull();
        file.NotEmpty();

        string json = projectOption.ToJsonFormat();
        await File.WriteAllTextAsync(file, json);
    }
}
