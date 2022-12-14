using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Templates;

public partial class RawToCultivatedScript
{
    public RawToCultivatedScript(
        PhysicalModel physicalModel,
        string pipelineName,
        string activityName,
        string? paramValueFormat,
        string executionTypeColumn)
    {
        PhysicalModel = physicalModel.NotNull();
        PipelineName = pipelineName.NotEmpty();
        ActivityName = activityName.NotEmpty();
        ParamValueFormat = paramValueFormat;
        ExecutionTypeColumn = executionTypeColumn;
    }

    public PhysicalModel PhysicalModel { get; }
    public string PipelineName { get; }
    public string ActivityName { get; }
    public string? ParamValueFormat { get; }
    public string ExecutionTypeColumn { get; }

    private string FormatParamValue(string columnName) => ParamValueFormat.ToNullIfEmpty() switch
    {
        null => columnName,

        string fmt => fmt
            .Split('*')
            .Func(x => x.Length switch
            {
                1 => x + columnName,
                2 => (x[0] ?? String.Empty) + columnName + (x[1] ?? String.Empty),

                _ => throw new ArgumentException($"ParamValueFormat is valid {ParamValueFormat}"),
            }),
    };

    public IReadOnlyList<IReadOnlyList<string>> GetTableNames()
    {
        var list = PhysicalModel
            .Tables
            .Select(x => x.Name.Name)
            .Distinct()
            .OrderBy(x => x)
            .Select(x => (tableName: x, hasLnum: hasLnum(x), tableMode: getTableMode(x)))
            .SelectMany(x => new[]
            {
                $"('{x.tableName}', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', '{FormatParamValue(x.tableName)}')",
                $"('{x.tableName}', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')",
                $"('{x.tableName}', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)",
                $"('{x.tableName}', @activity_id, @activity_name, 1, 'Source', 'IncrementalSnapshot_Deletes_Execution_Type', '{x.hasLnum}')",
                $"('{x.tableName}', @activity_id, @activity_name, 1, 'Source', 'LoadTable_Snapshot_Delete', '{x.tableMode}')",
            })
            .ToList();

       return list
            .ToList()
            .Chunk(900)
            .Select(x => x.Select((y, i) => i == x.Length - 1 ? y : y + ",").ToArray())
            .ToArray();

        int hasLnum(string tableName) => PhysicalModel.Tables
            .Where(x => x.Name.Name == tableName)
            .Any(x => x.Columns.Any(y => y.Name == ExecutionTypeColumn)) ? 0 : 1;

        int getTableMode(string tableName) => PhysicalModel.Tables
            .Where(x => x.Name.Name == tableName)
            .FirstOrDefault() switch
        {
            TableModel v when v.TableMode == TableMode.Full => 1,
            _ => 0,
        };
    }
}
