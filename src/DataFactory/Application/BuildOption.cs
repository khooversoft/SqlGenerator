using Toolbox.Tools;

namespace DataFactory.Application;

public class BuildOption
{
    public string Folder { get; set; } = null!;
    public string AdfRootFolder { get; set; } = null!;
    public string PipelineModel { get; set; } = null!;
}


public static class BuildOptionExtensions
{
    public static BuildOption Verify(this BuildOption subject)
    {
        subject.NotNull();

        subject.Folder.NotEmpty();
        subject.AdfRootFolder.NotEmpty();
        subject.PipelineModel.NotEmpty();

        return subject;
    }
}