using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Model;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.Activities;

internal class ImportOptionActivity
{
    private readonly ILogger<ImportOptionActivity> _logger;

    public ImportOptionActivity(ILogger<ImportOptionActivity> logger) => _logger = logger.NotNull();

    public async Task Generate(string configFile, string modelName)
    {
        configFile.NotEmpty();
        modelName.NotEmpty();

        _logger.LogInformation("Writing option file {configFile} for model {modelName}", configFile, modelName);

        var config = new ImportOption
        {
            Schemas = new[]
            {
                new SchemaModel { Security = Security.Data, Name = $"clt_{modelName}" },

                new SchemaModel { Security = Security.Unrestricted, Name = modelName, Format = "Vw_{tableName}" },
                new SchemaModel { Security = Security.Restricted, Name = $"{modelName}_restricted", Format = "Vw_{tableName}" },
                new SchemaModel { Security = Security.PII, Name = $"{modelName}_pii", Format = "Vw_{tableName}" },

                new SchemaModel { Security = Security.Unrestricted, Name = modelName, Format = "Vw_sas_{tableName}", MaxColumnSize=32 },
                new SchemaModel { Security = Security.Restricted, Name = $"{modelName}_restricted", Format = "Vw_sas_{tableName}", MaxColumnSize=32 },
                new SchemaModel { Security = Security.PII, Name = $"{modelName}_pii", Format = "Vw_sas_{tableName}", MaxColumnSize=32 },
            },
            PrefixColumns = ImportOptionDefaults.Prefix.ToArray(),
            SufixColumns = ImportOptionDefaults.Sufix.ToArray(),
        };

        _logger.LogInformation("Writing default option configuration file to {file}", configFile);
        await File.WriteAllTextAsync(configFile, config.ToJsonFormat());
    }
}
