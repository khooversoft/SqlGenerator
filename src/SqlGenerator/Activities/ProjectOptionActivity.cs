using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.Activities;

internal class ProjectOptionActivity
{
    const string _extension = ".project.json";
    private readonly ILogger<ProjectOptionActivity> _logger;

    public ProjectOptionActivity(ILogger<ProjectOptionActivity> logger) => _logger = logger;

    public Task SetSourceFile(string projectFileReference, string? sourceFile) => SetValue(projectFileReference, (x, basePath) => x with
    {
        SourceFile = sourceFile == null ? null : GetRelativePath(sourceFile, basePath) ?? x.SourceFile,
    });

    public Task SetOptionFile(string projectFileReference, string? optionFile) => SetValue(projectFileReference, (x, basePath) => x with
    {
        OptionFile = optionFile == null ? null : GetRelativePath(optionFile, basePath) ?? x.OptionFile,
    });

    public Task SetBuildFolder(string projectFileReference, string? buildFolder) => SetValue(projectFileReference, (x, basePath) => x with
    {
        BuildFolder = buildFolder == null ? null : GetRelativePath(buildFolder, basePath) ?? x.BuildFolder,
    });

    public Task SetTableListFile(string projectFileReference, string? tableListFile) => SetValue(projectFileReference, (x, basePath) => x with
    {
        TableListFile = tableListFile == null ? null : GetRelativePath(tableListFile, basePath) ?? x.TableListFile,
    });

    public Task SetNameMap(string projectFileReference, string? nameMapFile) => SetValue(projectFileReference, (x, basePath) => x with
    {
        NameMapFile = nameMapFile == null ? null : GetRelativePath(nameMapFile, basePath) ?? x.NameMapFile,
    });

    public Task SetUspLoadTableOption(string projectFileReference, string outputFile, string? dataTableName, string? dataLayerName)
    {
        return SetValue(projectFileReference, (x, basePath) => x with
        {
            UspLoadTableOption = x.UspLoadTableOption switch
            {
                null => dataTableName switch
                {
                    null => null,
                    _ => new UspLoadTableOption
                    {
                        OutputFile = outputFile,
                        DataTableName = dataTableName.NotNull(),
                        DataLayerName = dataLayerName.NotNull(),
                    }
                },

                _ => x.UspLoadTableOption with
                {
                    OutputFile = outputFile,
                    DataTableName = dataTableName.NotNull(),
                    DataLayerName = dataLayerName.NotNull(),
                }
            },
        });
    }

    public Task SetRawToCultivated(string projectFileReference, string outputFile, string pipelineName, string activityName, string? paramValueFormat)
    {
        return SetValue(projectFileReference, (x, basePath) => x with
        {
            RawToCultivated = new RawToCultivatedOption
            {
                OutputFile = outputFile,
                PipelineName = pipelineName,
                ActivityName = activityName,
                ParamValueFormat = paramValueFormat
            },
        });
    }

    public ProjectOption Read(string projectFile) => File.ReadAllText(projectFile)
        .ToObject<ProjectOption>()
        .NotNull()
        .Action(x => _logger.LogInformation("Read project file {file}", projectFile));

    private async Task SetValue(string projectFileReference, Func<ProjectOption, string, ProjectOption> set)
    {
        projectFileReference.NotEmpty();
        set.NotNull();

        (string projectFile, string baseFile) = GetPaths(projectFileReference);
        ProjectOption project = ReadOrCreate(projectFile);
        await Write(projectFile, set(project, baseFile));
    }

    private async Task Write(string projectFile, ProjectOption project)
    {
        _logger.LogInformation("Writing project {outputFile} file", projectFile);
        await File.WriteAllTextAsync(projectFile, project.ToJsonFormat());
    }

    private (string projectFile, string baseFile) GetPaths(string projectFile)
    {
        return (ConstructProjectFilePath(projectFile), Path.GetDirectoryName(projectFile).NotNull());
    }

    private ProjectOption ReadOrCreate(string projectFile)
    {
        return File.Exists(projectFile) switch
        {
            true => Read(projectFile),
            false => new ProjectOption(),
        };
    }

    private string? GetRelativePath(string? path, string basePath)
    {
        path = PathTool.ApplyBasePath(path, basePath);

        path = Path.GetExtension(path).IsEmpty() switch
        {
            true => Path.ChangeExtension(path, ".json"),
            false => path,
        };

        return path switch
        {
            null => null,
            _ => Path.GetRelativePath(basePath, path),
        };
    }

    private string ConstructProjectFilePath(string projectFile)
    {
        projectFile = new FileInfo(projectFile).FullName;

        return File.Exists(projectFile) switch
        {
            true => projectFile,
            false => PathTool.SetFileExtension(projectFile, _extension),
        };
    }
}
