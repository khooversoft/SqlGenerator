﻿using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlGenerator.sdk.Defaults;

public static class NormalColumnDefaults
{
    public static IReadOnlyList<ColumnDefinitionModel> Prefix { get; } = new[]
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
}
