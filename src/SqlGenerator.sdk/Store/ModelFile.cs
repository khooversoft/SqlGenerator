using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Store;

public class ModelFile
{
    public static PhysicalModel Read(string file)
    {
        file.NotEmpty().Assert(x => File.Exists(x), x => $"File {x} does not exist");

        return File.ReadAllText(file)
            .ToObject<PhysicalModel>()
            .NotNull(name: "Deserialize error")
            .Verify();
    }

    public static void Write(string file, PhysicalModel model)
    {
        file.NotEmpty();

        string json = model.ToJsonFormat();
        File.WriteAllText(file, json);
    }
}
