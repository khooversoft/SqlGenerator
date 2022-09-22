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
}

   