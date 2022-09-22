using SqlGenerator.sdk.CsvStore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace DataGenerator.Application;

public record UpdateOption
{
    public string CurrentFile { get; init; } = null!;
    public string UpdateFile { get; init; } = null!;
    public IReadOnlyList<ColumnOverride> ColumnOverrides { get; init; } = Array.Empty<ColumnOverride>();
}

public record ColumnOverride
{
    public string TableName { get; init; } = null!;
    public string ColumnName { get; init; } = null!;
    public string DataType { get; init; } = null!;
}


public static class UpdateOptionFile
{
    public static UpdateOption Verify(this UpdateOption subject)
    {
        subject.NotNull();
        subject.UpdateFile.NotEmpty();
        subject.CurrentFile.NotEmpty();
        subject.ColumnOverrides.NotNull();
        subject.ColumnOverrides.ForEach(x => x.Verify());

        return subject;
    }

    public static ColumnOverride Verify(this ColumnOverride subject)
    {
        subject.NotNull();
        subject.TableName.NotEmpty();
        subject.ColumnName.NotEmpty();
        subject.DataType.NotEmpty();

        return subject;
    }

    public static UpdateOption Read(string file) => File.ReadAllText(file)
        .NotEmpty(name: $"File {file} is empty")
        .ToObject<UpdateOption>()
        .NotNull(name: $"File {file} serialization failed")
        .Verify()
        .Func(x => x with
        {
            CurrentFile = PathTool.ToFullPath(file, x.CurrentFile).NotEmpty(),
            UpdateFile = PathTool.ToFullPath(file, x.UpdateFile).NotEmpty(),
        });

    public static string GetColumnKey(this ColumnOverride subject) =>
        $"{subject.TableName.ToLower()}-{subject.ColumnName.ToLower()}";

}

