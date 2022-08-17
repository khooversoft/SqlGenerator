using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Defaults;
using SqlGenerator.sdk.Import;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.Activities;

internal class ImportOptionActivity
{
    private readonly ILogger<ImportOptionActivity> _logger;

    private static IReadOnlyList<ColumnDefinitionModel> Prefix { get; } = new[]
{
        new ColumnDefinitionModel { Name = "ASAP_RecordEffectiveDateTime", DataType = "datetime2(7)", NotNull = true },
        new ColumnDefinitionModel { Name = "ASAP_DeleteDateTime", DataType = "nvarchar(10)" },
    };

    public static IReadOnlyList<ColumnDefinitionModel> Sufix { get; } = new[]
    {
        new ColumnDefinitionModel { Name = "ASAP_ROW_HASH", DataType = "nvarchar(64)" },
        new ColumnDefinitionModel { Name = "ASAP_DML_FLAG", DataType = "nvarchar(2)" },
        new ColumnDefinitionModel { Name = "ASAP_CREATED_DATE", DataType = "datetime2(7)" },
        new ColumnDefinitionModel { Name = "ASAP_UPDATED_DATE", DataType = "datetime2(7)" },
        new ColumnDefinitionModel { Name = "ASAP_LINEAGE_ID", DataType = "nvarchar(36)" },
        new ColumnDefinitionModel { Name = "ASAP_ACTIVITY_ID", DataType = "nvarchar(36)" },
        new ColumnDefinitionModel { Name = "ASAP_TRIGGER_ID", DataType = "nvarchar(36)" },
        new ColumnDefinitionModel { Name = "ASAP_SRC_FILEPATH", DataType = "nvarchar(1000)" },
        new ColumnDefinitionModel { Name = "ASAP_SRC_FILE_DATE", DataType = "datetime2(7)" },
        new ColumnDefinitionModel { Name = "ASAP_SRC_NAME", DataType = "nvarchar(36)" },
    };

    public ImportOptionActivity(ILogger<ImportOptionActivity> logger) => _logger = logger.NotNull();

    public async Task Generate(string configFile)
    {
        configFile.NotEmpty();

        var config = new ImportOption
        {
            Schemas = new[]
            {
                new SchemaModel { Security = Security.Data, Name = "NetO_data" },
                new SchemaModel { Security = Security.Unrestricted, Name = "NetO" },
                new SchemaModel { Security = Security.Restricted, Name = "NetO_restricted" },
                new SchemaModel { Security = Security.PII, Name = "NetO_pii" },
            },
            PrefixColumns = Prefix.ToArray(),
            SufixColumns = Sufix.ToArray(),
        };

        _logger.LogInformation("Writing default option configuration file to {file}", configFile);
        await File.WriteAllTextAsync(configFile, config.ToJsonFormat());
    }
}
