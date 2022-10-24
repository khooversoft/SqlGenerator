using Toolbox.Tools;

namespace DataFactory.Application;

public class SyncOption
{
    public string DictionaryFile { get; set; } = null!;
}


public static class SyncOptionExtensions
{
    public static SyncOption Verify(this SyncOption subject)
    {
        subject.NotNull();
        subject.DictionaryFile.NotEmpty();

        return subject;
    }
}
