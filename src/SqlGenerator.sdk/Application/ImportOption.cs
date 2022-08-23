using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public record ImportOption
{
    public IReadOnlyList<SchemaModel> Schemas { get; init; } = Array.Empty<SchemaModel>();
    public IReadOnlyList<ColumnDefinitionModel> PrefixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
    public IReadOnlyList<ColumnDefinitionModel> SufixColumns { get; init; } = Array.Empty<ColumnDefinitionModel>();
}


public static class ImportOptionBuilder
{
    public static ImportOption Verify(this ImportOption? subject)
    {
        subject.NotNull();
        subject.Schemas.NotNull();
        subject.PrefixColumns.NotNull();
        subject.SufixColumns.NotNull();

        return subject;
    }

    public static ImportOption GetImportOption(this ProjectOption project, ILogger logger)
    {
        project.Verify();
        project.OptionFile.NotEmpty();

        string folder = project.GetProjectFolder();
        string optionFile = PathTool.ApplyBasePath(project.OptionFile, folder)!;

        optionFile.Assert(x => File.Exists(x), x => $"File {x} does not exist");

        ImportOption importOption = File.ReadAllText(optionFile)
            .ToObject<ImportOption>()
            .NotNull();
        logger.LogInformation("Read option file {file}", optionFile);

        return new ImportOption
        {
            Schemas = importOption.Schemas.ToList(),
            PrefixColumns = importOption.PrefixColumns.ToList(),
            SufixColumns = importOption.SufixColumns.ToList(),
        };
    }

}