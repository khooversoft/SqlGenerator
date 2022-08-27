using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Templates;

public partial class RawToCultivatedScript
{
    public RawToCultivatedScript(PhysicalModel physicalModel, string pipelineName, string activityName)
    {
        PhysicalModel = physicalModel.NotNull();
        PipelineName = pipelineName.NotEmpty();
        ActivityName = activityName.NotEmpty();
    }

    public PhysicalModel PhysicalModel { get; }
    public string PipelineName { get; }
    public string ActivityName { get; }

    public IReadOnlyList<string> GetTableNames() => PhysicalModel
        .Tables
        .Select(x => x.Name.Name)
        .Distinct()
        .OrderBy(x => x)
        .SelectMany(x => new[]
        {
            $"('{x}', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', '{x}')",
            $"('{x}', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')",
            $"('{x}', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)",
        })
        .ToList();
}
