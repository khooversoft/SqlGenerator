using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.Activities;

internal class GenerateActivity
{
    public Task Generate(string schemaFile, string dllFile)
    {
        schemaFile.NotEmpty();
        dllFile.NotEmpty();
        return Task.CompletedTask;
    }
}
