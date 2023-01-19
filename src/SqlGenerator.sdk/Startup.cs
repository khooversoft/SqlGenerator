using Microsoft.Extensions.DependencyInjection;
using SqlGenerator.sdk.Generator;
using SqlGenerator.sdk.Project;
using SqlGenerator.sdk.Project.Activities;
using Toolbox.Tools;

namespace SqlGenerator.sdk;

public static class Startup
{
    public static IServiceCollection AddProjectBuild(this IServiceCollection collection)
    {
        collection.NotNull();

        collection.AddSingleton<GenerateSqlCodeActivity>();
        collection.AddSingleton<ModelActivity>();
        collection.AddSingleton<FileStoreBuilder>();
        collection.AddSingleton<UspLoadTableMetaBuilder>();
        collection.AddSingleton<UspLoadTableMetaActivity>();
        collection.AddSingleton<RawToCultivatedActivity>();
        collection.AddSingleton<FileSingleBuilder>();
        collection.AddSingleton<ProjectBuilder>();


        return collection;
    }
}
