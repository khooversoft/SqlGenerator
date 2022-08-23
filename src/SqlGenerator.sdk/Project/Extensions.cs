using Microsoft.Extensions.DependencyInjection;
using SqlGenerator.sdk.Generator;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public static class Extensions
{
    public static IServiceCollection AddProjectBuild(this IServiceCollection collection)
    {
        collection.NotNull();

        collection.AddSingleton<FilterSourceActivity>();
        collection.AddSingleton<GenerateSqlCodeActivity>();
        collection.AddSingleton<ModelActivity>();
        collection.AddSingleton<ShortNameActivity>();
        collection.AddSingleton<FileStoreBuilder>();
        collection.AddSingleton<ProjectBuilder>();


        return collection;
    }
}
