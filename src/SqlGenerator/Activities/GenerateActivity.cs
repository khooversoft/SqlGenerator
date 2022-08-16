using SqlGenerator.sdk.Model;
using SqlGenerator.sdk.Store;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.Activities;

internal class GenerateActivity
{
    public Task Generate(string schemaFile, string dllFile)
    {
        schemaFile.NotEmpty().Assert(x => File.Exists(x), x => $"File {x} does not exist");
        dllFile.NotEmpty();

        PhysicalModel model = ModelFile.Read(schemaFile);


        return Task.CompletedTask;
    }
}
