using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public class ConfigFile
{
    public ConfigFile(string sourceFile) => SourceFile = sourceFile;
    public ConfigFile(string sourceFile, string extension) => SourceFile = PathTool.SetFileExtension(sourceFile, extension);
    public string SourceFile { get; }
    public DateTime? GetLastUpdateDate() => DirectoryTool.GetFileInfo(SourceFile)?.LastWriteTime;
    public bool Exists() => File.Exists(SourceFile);
    public void Delete() => File.Delete(SourceFile);

    public override string ToString() => SourceFile;
    public static implicit operator string(ConfigFile configFile) => configFile.SourceFile;
}