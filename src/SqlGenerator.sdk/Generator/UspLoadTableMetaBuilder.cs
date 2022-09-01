﻿using Microsoft.Extensions.Logging;
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

        list += (InstructionType.Stream, $"{uspLoadTableOption.OutputFile}.sql");
        list += DeleteLayer(uspLoadTableOption);

        var tables = _physicalModel.Tables
            .SelectMany(x =>
                x.Columns.Where(y => y.PrinaryKey).OrderBy(x => x.ColumnIndex),
                (o, i) => (TableName: o.Name.Name, Column: i)
            )
            .OrderBy(x => x.TableName)
            .GroupBy(x => x.TableName);

        foreach (var table in tables)
        {
            list += $"INSERT INTO {uspLoadTableOption.DataTableName} (DataLayer, TableName, ColumnName, ColumnOrder)";

            var lines = table
                .SelectMany(x => new[]
                {
                    $"SELECT '{uspLoadTableOption.DataLayerName}', '{x.TableName}', '{x.Column.Name}', {x.Column.ColumnIndex}",
                    "UNION ALL",
                })
                .ToList();

            lines
                .Take(lines.Count - 1)
                .ForEach(x => list += x);

            //lines
            //    .Select((x, i) => i == lines.Count - 1 ? x : x + ",")
            //    .ForEach(x => list += x);

            list += "GO";
            list += "";
        }

        return list;
    }

    private Instructions DeleteLayer(UspLoadTableOption uspLoadTableOption)
    {
        var list = new Instructions();
        list += $"DELETE FROM {uspLoadTableOption.DataTableName} WHERE DataLayer = '{uspLoadTableOption.DataLayerName}';";
        list += "GO";
        list += "";

        return list;
    }
}
