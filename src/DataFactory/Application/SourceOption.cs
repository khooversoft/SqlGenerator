using Toolbox.Tools;

namespace DataFactory.Application;

public class SourceOption
{
    public string DictionaryFile { get; set; } = null!;
    public string Type { get; set; } = null!;
}


public static class SourceOptionExtensions
{
    public static SourceOption Verify(this SourceOption subject)
    {
        subject.NotNull();
        subject.DictionaryFile.NotEmpty();
        subject.Type.NotNull();

        return subject;
    }
}