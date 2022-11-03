using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Model;
using SqlGenerator.sdk.Project;
using SqlGenerator.sdk.Project.Activities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class UspLoadTableMetaBuilder
{
    private readonly PhysicalModel _physicalModel;
    public UspLoadTableMetaBuilder(PhysicalModel model) => _physicalModel = model.Verify();

    public Instructions Build(UspLoadTableOption uspLoadTableOption)
    {
        uspLoadTableOption.Verify();

        var list = new Instructions();

        list += (InstructionType.Stream, $"{uspLoadTableOption.OutputFile}");
        list += DeleteLayer(uspLoadTableOption);

        var tables = _physicalModel.Tables
            .SelectMany(x =>
                x.Columns.Where(y => y.PrimaryKey).OrderBy(x => x.ColumnIndex),
                (o, i) => (TableName: o.Name.Name, Column: i)
            )
            .OrderBy(x => x.TableName)
            .GroupBy(x => x.TableName);

        foreach (var table in tables)
        {
            list += $"INSERT INTO {uspLoadTableOption.DataTableName} (DataLayer, TableName, ColumnName, ColumnOrder)";

            list += table
                .Select(x => $"SELECT '{uspLoadTableOption.DataLayerName}', '{x.TableName}', '{x.Column.Name}', {x.Column.ColumnIndex + 1}")
                .SequenceJoin("UNION ALL")
                .ToList();

            list += ";";
            list += "";
        }

        return list;
    }

    private Instructions DeleteLayer(UspLoadTableOption uspLoadTableOption)
    {
        var list = new Instructions();
        list += $"DELETE FROM {uspLoadTableOption.DataTableName} WHERE DataLayer = '{uspLoadTableOption.DataLayerName}';";
        list += "";

        return list;
    }
}
