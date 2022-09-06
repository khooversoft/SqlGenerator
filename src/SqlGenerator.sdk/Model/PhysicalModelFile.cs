using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Model;

public static class PhysicalModelFile
{
    public static void Write(this PhysicalModel model, string fileName) => File.WriteAllText(fileName, model.ToJsonFormat());

    public static PhysicalModel Read(string fileName) => File.ReadAllText(fileName)
        .NotNull()
        .ToObject<PhysicalModel>()
        .NotNull();
}
