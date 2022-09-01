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
    public RawToCultivatedScript(PhysicalModel physicalModel, string pipelineName, string activityName, string? paramValueFormat)
    {
        PhysicalModel = physicalModel.NotNull();
        PipelineName = pipelineName.NotEmpty();
        ActivityName = activityName.NotEmpty();
        ParamValueFormat = paramValueFormat;
    }

    public PhysicalModel PhysicalModel { get; }
    public string PipelineName { get; }
    public string ActivityName { get; }
    public string? ParamValueFormat { get; }

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

    public IReadOnlyList<string> GetTableNames()
    {
        var list = PhysicalModel
            .Tables
            .Select(x => x.Name.Name)
            .Distinct()
            .OrderBy(x => x)
            .SelectMany(x => new[]
            {
                $"('{x}', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', '{FormatParamValue(x)}')",
                $"('{x}', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')",
                $"('{x}', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)",
            })
            .ToList();

        return list
            .Select((x, i) => i == list.Count - 1 ? x : x + ",")
            .ToList();
    }
}
