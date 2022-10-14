﻿using DataTools.sdk.Model;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Model;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.Activities;

internal class DefaultOptionActivity
{
    private readonly ILogger<DefaultOptionActivity> _logger;

    public DefaultOptionActivity(ILogger<DefaultOptionActivity> logger) => _logger = logger.NotNull();

    public async Task WriteDefaultSchemaOption(string configFile, string modelName)
    {
        configFile.NotEmpty();
        modelName.NotEmpty();

        _logger.LogInformation("Writing option file {configFile} for model {modelName}", configFile, modelName);

        var config = new SchemaOption
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
            PrefixColumns = SchemaOptionDefaults.Prefix.ToArray(),
            SufixColumns = SchemaOptionDefaults.Sufix.ToArray(),
        };

        _logger.LogInformation("Writing default option configuration file to {file}", configFile);
        await File.WriteAllTextAsync(configFile, config.ToJsonFormat());
    }

    public async Task WriteDefaultClassificationOption(string classificationFile)
    {
        var option = new ClassificationOption
        {
            Protection = new[]
            {
                new ClassificationRecord
                {
                    ColumnNameMatch = "{tableName}.{columnName}",
                    PII = true,
                    Restricted = false,
                },
                new ClassificationRecord
                {
                    ColumnNameMatch = "*.{columnName}",
                    PII = true,
                    Restricted = false,
                },
                new ClassificationRecord
                {
                    ColumnNameMatch = "*.*num*",
                    PII = true,
                    Restricted = false,
                },                
            },
        };

        await option.WriteAsync(classificationFile);
    }
}
