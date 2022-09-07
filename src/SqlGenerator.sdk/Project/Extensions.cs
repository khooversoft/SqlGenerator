using Microsoft.Extensions.DependencyInjection;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Project.Activities;
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
        collection.AddSingleton<ClassificationActivity>();
        collection.AddSingleton<GenerateSqlCodeActivity>();
        collection.AddSingleton<ModelActivity>();
        collection.AddSingleton<FileStoreBuilder>();
        collection.AddSingleton<BuildDataDictionaryActivity>();
        collection.AddSingleton<MergeActivity>();
        collection.AddSingleton<UspLoadTableMetaBuilder>();
        collection.AddSingleton<UspLoadTableMetaActivity>();
        collection.AddSingleton<RawToCultivatedActivity>();
        collection.AddSingleton<FileSingleBuilder>();
        collection.AddSingleton<ProjectBuilder>();


        return collection;
    }
}
