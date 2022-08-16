using SqlGenerator.sdk.Model;
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
        new ColumnDefinitionModel { Name = "ASAP_RecordEffectiveDateTime", Type = DataType.DateTime2, NotNull = true },
        new ColumnDefinitionModel { Name = "ASAP_DeleteDateTime", Type = DataType.DateTime2 },
    };

    public static IReadOnlyList<ColumnDefinitionModel> Sufix { get; } = new[]
    {
        new ColumnDefinitionModel { Name = "ASAP_ROW_HASH", Type = DataType.VarChar, Size = 64 },
        new ColumnDefinitionModel { Name = "ASAP_DML_FLAG", Type = DataType.VarChar, Size = 2 },
        new ColumnDefinitionModel { Name = "ASAP_CREATED_DATE", Type = DataType.DateTime2 },
        new ColumnDefinitionModel { Name = "ASAP_UPDATED_DATE", Type = DataType.DateTime2 },
        new ColumnDefinitionModel { Name = "ASAP_LINEAGE_ID", Type = DataType.VarChar, Size = 36 },
        new ColumnDefinitionModel { Name = "ASAP_ACTIVITY_ID", Type = DataType.VarChar, Size = 36 },
        new ColumnDefinitionModel { Name = "ASAP_TRIGGER_ID", Type = DataType.VarChar, Size = 36 },
        new ColumnDefinitionModel { Name = "ASAP_SRC_FILEPATH", Type = DataType.VarChar, Size = 1000 },
        new ColumnDefinitionModel { Name = "ASAP_SRC_FILE_DATE", Type = DataType.DateTime2 },
        new ColumnDefinitionModel { Name = "ASAP_SRC_NAME", Type = DataType.VarChar, Size = 36 },
    };
}
