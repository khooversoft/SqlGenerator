﻿using DataTools.sdk.Model;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class SqlViewBuilder
{
    private const string _aliasFormat = "{alias}";
    private const string _tableFormat = "{tableName}";
    private readonly PhysicalModel _physicalModel;
    private readonly SqlProjectOption _option;

    public SqlViewBuilder(PhysicalModel model, SqlProjectOption option)
    {
        _physicalModel = model.NotNull();
        _option = option.NotNull();
    }


    // Creating view for all non data security groups (lookup schema to get security level of schema)
    //   Unrestricted view => both Restricted and PII columns are hashed
    //   Restricted view => only PII columns are hashed
    //   PII view => all columns are visible
    public Instructions BuildViewModel(TableModel tableModel, BuildType buildType, SchemaModel schema)
    {
        var list = new Instructions();

        IReadOnlyList<ColumnModel> columns = tableModel.Columns.Where(x => x.PrimaryKey)
            .Concat(_physicalModel.PrefixColumns.Where(x => !x.Private))
            .Concat(tableModel.Columns.Where(x => !x.PrimaryKey))
            .Concat(_physicalModel.SuffixColumns.Where(x => !x.Private))
            .Where(x => FilterView(tableModel, x))
            .ToArray();

        if (columns.Count == 0) return list;

        var viewName = new SqlObjectName
        {
            Schema = schema.Name,
            Name = GetRealViewName(tableModel, schema),
        };

        list += (InstructionType.Stream, viewName.CalculateFileName());
        list += SqlInstructionBuilder._headers;

        list += buildType switch
        {
            BuildType.SchemaOnly => Array.Empty<string>(),
            _ => new[]
            {
                $"IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = '{viewName.Schema}' AND TABLE_NAME = '{viewName.Name}')",
                "BEGIN",
                $"   DROP VIEW {viewName}",
                "END",
                "GO",
                "",
            }
        };

        list += "";
        list += $"CREATE VIEW {viewName}";
        list += "AS";
        list += InstructionType.TabPlus;
        list += "SELECT";
        list += InstructionType.TabPlus;

        var relationships = GetRelationship(tableModel);

        list += columns
            .Select(x => BuildColumnModel(x, schema))
            .Concat(relationships.Select(x => x.Select))
            .Concat(CalculatedViews(tableModel, relationships))
            .SequenceJoin(x => x += ",");

        list += InstructionType.TabMinus;
        list += $"FROM {tableModel.Name} x";

        if (relationships.Count > 0)
        {
            list += InstructionType.TabPlus;
            list += relationships.Select(x => x.Join);
            list += InstructionType.TabMinus;
        }

        list += "WHERE";
        list += InstructionType.TabPlus;
        list += $"x.[ASAP_DeleteDateTime] IS NULL";
        list += BuildRelationshipRestrictions(tableModel);
        list += InstructionType.TabMinus;

        list += ";";

        list += buildType switch
        {
            BuildType.SchemaOnly => Array.Empty<string>(),
            _ => "GO".ToEnumerable(),
        };

        return list;
    }

    private bool FilterView(TableModel tableModel, ColumnModel columnModel)
    {
        bool excludeNot = _physicalModel.Commands
            .Where(x => x.Type == CommandType.ExcludeViewNot)
            .Any(x => PatternMatch.IsMatch(x.Pattern, $"{tableModel.Name.Name}.{columnModel.Name}"));

        if (excludeNot) return true;

        bool exclude = _physicalModel.Commands
            .Where(x => x.Type == CommandType.ExcludeView)
            .Any(x => PatternMatch.IsMatch(x.Pattern, $"{tableModel.Name.Name}.{columnModel.Name}"));

        return !exclude;
    }

    private IReadOnlyList<string> CalculatedViews(TableModel tableModel, IReadOnlyList<RelationshipInstruction> relationships)
    {
        var cmdFunction = new CommandFunction()
            .Add("alias", getAlias);

        var list = _physicalModel.Commands
            .Where(x => x.Type == CommandType.ViewColumn)
            .Where(x => PatternMatch.IsMatch(x.Pattern, tableModel.Name.ToSimpleString()))
            .Select(x => cmdFunction.Resolve(x.Command.NotEmpty()))
            .ToArray();

        return list;


        string getAlias(string tableName) => relationships
            .Where(x => SqlObjectName.Parse(tableName) == SqlObjectName.Parse(x.ReferenceTableName))
            .Select(x => ToAlias(x.Index))
            .FirstOrDefault()
            .NotEmpty(name: $"Table {tableName} does not exist");
    }

    private string GetRealViewName(TableModel tableModel, SchemaModel schema)
    {
        string realViewName = schema.Format switch
        {
            null => tableModel.Name.Name,
            not null => schema.Format.Replace(_tableFormat, tableModel.Name.Name),
        };

        realViewName = schema.MaxColumnSize switch
        {
            null => realViewName,
            int v => _option?.ShortName(realViewName, v) ?? realViewName,
        };

        return realViewName;
    }

    private string BuildColumnModel(ColumnModel columnModel, SchemaModel schemaModel)
    {
        return columnModel.CanShowValue(schemaModel.Security) switch
        {
            true => $"x.[{columnModel.Name}]" + displayAs(),

            false => $"HASHBYTES('SHA2_256', {castAs(columnModel.Name, columnModel.DataType)})" + displayAs(columnModel.Name),
        };

        string? getRealColumnName() => schemaModel.MaxColumnSize switch
        {
            null => null,
            int v => _option?.ShortName(columnModel.Name, v) ?? columnModel.Name,
        };

        string displayAs(string? defaultName = null) => getRealColumnName() switch
        {
            string v => $" AS [{v}]",
            _ => defaultName switch
            {
                null => string.Empty,
                _ => $" AS [{defaultName}]",
            },
        };

        string castAs(string name, string dataType)
        {
            return dataType.ToLower().Trim().ToNullIfEmpty() switch
            {
                null => throw new ArgumentException("Data type is null"),

                string v when v.StartsWith("char") => normalFmt(name),
                string v when v.StartsWith("nchar") => normalFmt(name),
                string v when v.StartsWith("varchar") => normalFmt(name),
                string v when v.StartsWith("nvarchar") => normalFmt(name),

                _ => $"CAST(x.[{name}] AS NVARCHAR(50))",
            };

            string normalFmt(string name) => $"x.[{name}]";
        }
    }

    private IEnumerable<string> BuildRelationshipRestrictions(TableModel tableModel)
    {
        var found = _physicalModel.Relationships
            .SelectMany(x => tableModel.Columns.Select(x => x.Name), (r, c) => (
                columnName: c,
                foreignTableName: r.TableName,
                foreignColumnName: r.ColumnName,
                pass: PatternMatch.IsMatch(r.ReferenceObjectId, $"{tableModel.Name.Name}.{c}")
                ))
            .Where(x => x.pass)
            .ToArray();

        return found.Length switch
        {
            0 => Array.Empty<string>(),
            _ => found.Take(1).Select(x => new string[]
            {
                $"AND NOT EXISTS (SELECT * FROM [{tableModel.Name.Schema}].[{x.foreignTableName}] i",
                $"WHERE x.[{x.columnName}] = i.[{x.foreignColumnName}])",
            }.Join(" ")
            )
        };
    }

    private IReadOnlyList<RelationshipInstruction> GetRelationship(TableModel tableModel) => _physicalModel.LookupRelationships
        .Where(x => PatternMatch.IsMatch(x.MatchTable, tableModel.Name.ToSimpleString()))
        .Select((x, index) => new RelationshipInstruction
        {
            ReferenceTableName = x.ReferenceTable,
            Index = index,
            Select = x.SelectLine.Replace(_aliasFormat, ToAlias(index)),
            Join = x.JoinLine.Replace(_aliasFormat, ToAlias(index)),
        }).ToArray();

    private string ToAlias(int index) => $"a{index}";

    private record RelationshipInstruction
    {
        public string ReferenceTableName { get; init; } = null!;
        public int Index { get; init; }
        public string Select { get; init; } = null!;
        public string Join { get; init; } = null!;
    }
}