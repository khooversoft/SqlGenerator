using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Toolbox.Tools;

public static class DirectoryTool
{
    public static void ClearDirectory(string folder)
    {
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
        Directory.CreateDirectory(folder);
    }

    public static FileInfo? GetFileInfo(string? file) => file switch
    {
        null => null,
        _ => new FileInfo(file) switch
        {
            FileInfo v when v.Exists => v,
            _ => null,
        }
    };
    
    public static DirectoryInfo? GetDirectoryInfo(string? directory) => directory switch
    {
        null => null,
        _ => new DirectoryInfo(directory) switch
        {
            DirectoryInfo v when v.Exists => v,
            _ => null,
        }
    };
}
