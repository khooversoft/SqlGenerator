using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;

namespace Toolbox.Tools;

public static class PathTool
{
    public static string? ApplyBasePath(string? path, string basePath) => path switch
    {
        null => null,

        string => Path.GetDirectoryName(path).ToNullIfEmpty() switch
        {
            null => Path.Combine(basePath, path),
            _ => path,
        }
    };

    public static string? ToFullPath(string referenceFile, string? file) => file switch
    {
        null => null,

        string => Path.IsPathFullyQualified(file) switch
        {
            true => file,
            false => Path.Combine(Path.GetDirectoryName(referenceFile).NotEmpty(), file),
        },
    };

    public static string SetFileExtension(string file, string extension)
    {
        file.NotEmpty();

        extension = extension
            .NotEmpty()
            .Trim()
            .Func(x => x[0] == '.' ? x : "." + x);

        return Path.GetExtension(file).IsEmpty() switch
        {
            true => file + extension,
            false => replaceExtension(file, extension)
        };

        string replaceExtension(string file, string extension)
        {
            int loop = extension
                .Split('.', StringSplitOptions.RemoveEmptyEntries)
                .Length;

            string fileWithoutExtension = Path.GetFileName(file);

            Enumerable.Range(0, loop)
                .ForEach(_ => fileWithoutExtension = Path.GetFileNameWithoutExtension(fileWithoutExtension));

            return Path.GetDirectoryName(file).ToNullIfEmpty() switch
            {
                null => fileWithoutExtension + extension,
                string v => Path.Combine(v, fileWithoutExtension + extension),
            };
        }
    }

    public static string? GetExtension(string file) => file
        .NotEmpty()
        .Split('\\', StringSplitOptions.RemoveEmptyEntries)
        .Last()
        .Split('.', StringSplitOptions.RemoveEmptyEntries)
        .Skip(1)
        .Join(".")
        .ToNullIfEmpty() switch
    {
        null => null,
        string v => "." + v,
    };

    public static string VersionFile(string file)
    {
        file.NotEmpty();

        string? directoryPath = Path.GetDirectoryName(file).ToNullIfEmpty();
        string? extension = GetExtension(file).ToNullIfEmpty();

        string fileName = Path.GetFileName(file)
            .NotEmpty(name: "no file name detected")
            .Func(x => extension != null ? x[0..^(extension.Length)] : x);

        int version = int.Parse(DateTime.Now.ToString("yyyyMMdd"));

        var parts = fileName.Split('-', StringSplitOptions.RemoveEmptyEntries);
        fileName = parts[0];

        (int? majorVersion, int? minorVesion) = getVersions();

        return (majorVersion, minorVesion) switch
        {
            (null, null) => BuildPath(directoryPath, $"{fileName}-{version}", extension),
            (not null, null) => (majorVersion == version) switch
            {
                false => BuildPath(directoryPath, $"{fileName}-{version}", extension),
                true => BuildPath(directoryPath, $"{fileName}-{version}-00", extension),
            },
            (not null, not null) => (majorVersion == version) switch
            {
                false => BuildPath(directoryPath, $"{fileName}-{version}", extension),
                true => BuildPath(directoryPath, $"{fileName}-{version}-{(minorVesion + 1):D2}", extension),
            },

            _ => throw new ArgumentException("Invalid parsing"),
        };

        (int? major, int? minor) getVersions() => parts.Length switch
        {
            2 => (tryParse(parts[1]), null),
            3 => (tryParse(parts[1]), tryParse(parts[2])),
            _ => (null, null),
        };

        int? tryParse(string value) => int.TryParse(value, out int result) switch
        {
            false => null,
            true => result,
        };
    }

    private static string BuildPath(string? directory, string fileName, string? extension)
    {
        string fileAndExtension = extension switch
        {
            null => fileName,
            not null => fileName + extension,
        };

        return directory switch
        {
            null => fileAndExtension,
            not null => Path.Combine(directory, fileAndExtension),
        };
    }
}

