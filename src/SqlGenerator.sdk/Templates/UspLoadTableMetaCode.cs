using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Templates;

public partial class UspLoadTableMeta
{
    private readonly string _dataTableName;
    private readonly string _dataLayerName;
    private readonly PhysicalModel _physicalModel;

    public UspLoadTableMeta(string dataTableName, string dataLayerName, PhysicalModel physicalModel)
    {
        _dataTableName = dataTableName.NotEmpty();
        _dataLayerName = dataLayerName.NotEmpty();
        _physicalModel = physicalModel.NotNull();
    }

    private IEnumerable<IGrouping<string, TableModel>> GetTableGroupsWithPrimarykey()
    {
        return _physicalModel
            .Tables
            .GroupBy(x => x.Name.Name);
    }
}
