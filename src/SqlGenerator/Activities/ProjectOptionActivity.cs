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

public class ProjectOptionActivity
{
    const string _extension = ".project.json";
    private readonly ILogger<ProjectOptionActivity> _logger;

    public ProjectOptionActivity(ILogger<ProjectOptionActivity> logger) => _logger = logger;

    public async Task Create(
        string projectFile,
        string? sourceFile = null,
        string? optionFile = null,
        string? masterFile = null,
        string? nameMapFile = null,
        string? tableListFile = null,
        int? shortNameMaxSize = null,
        string? buildFolder = null)
    {
        projectFile = ConstructProjectFilePath(projectFile);
        string basePath = Path.GetDirectoryName(projectFile).NotNull();

        ProjectOption project = ReadOrCreate(projectFile);

        project = project with
        {
            SourceFile = GetRelativePath(sourceFile, basePath) ?? project.SourceFile,
            OptionFile = GetRelativePath(optionFile, basePath) ?? project.OptionFile,
            NameMapFile = GetRelativePath(nameMapFile, basePath) ?? project.NameMapFile,
            ShortNameMaxSize = shortNameMaxSize ?? project.ShortNameMaxSize,
            TableListFile = GetRelativePath(tableListFile, basePath) ?? project.TableListFile,
            MasterFile = GetRelativePath(masterFile, basePath) ?? project.MasterFile,
            BuildFolder = buildFolder ?? project.BuildFolder,
        };

        _logger.LogInformation("Writing project {outputFile} file", project.ProjectFile);
        await File.WriteAllTextAsync(project.ProjectFile, project.ToJsonFormat());
    }

    public ProjectOption Read(string projectFile) => File.ReadAllText(projectFile)
        .ToObject<ProjectOption>()
        .NotNull()
        .Action(x => _logger.LogInformation("Read project file {file}", projectFile));

    private ProjectOption ReadOrCreate(string projectFile)
    {
        return File.Exists(projectFile) switch
        {
            true => Read(projectFile),
            false => new ProjectOption { ProjectFile = projectFile },
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
