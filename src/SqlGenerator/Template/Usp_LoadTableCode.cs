using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.Template;

public partial class Usp_LoadTable
{
    private readonly string _dataTableName;
    private readonly string _dataLayerName;
    private readonly PhysicalModel _physicalModel;

    public Usp_LoadTable(string dataTableName, string dataLayerName, PhysicalModel physicalModel)
    {
        _dataTableName = dataTableName.NotEmpty();
        _dataLayerName = dataLayerName.NotEmpty();
        _physicalModel = physicalModel.NotNull();
    }

}
