using DataTools.sdk.Model;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public class SqlViewBuilder
{
    private readonly PhysicalModel _physicalModel;
    public SqlViewBuilder(PhysicalModel model) => _physicalModel = model;


    // Creating view for all non data security groups (lookup schema to get security level of schema)
    //   Unrestricted view => both Restricted and PII columns are hashed
    //   Restricted view => only PII columns are hashed
    //   PII view => all columns are visible
    public Instructions BuildViewModel(TableModel tableModel, BuildType buildType, SchemaModel schema)
    {
        SqlObjectName viewName = schema.Format switch
        {
            null => new SqlObjectName { Schema = schema.Name, Name = tableModel.Name.Name },
            not null => new SqlObjectName { Schema = schema.Name, Name = schema.Format.Replace("{tableName}", tableModel.Name.Name) },
        };

        var list = new Instructions();
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

        var columns = tableModel.Columns.Where(x => x.PrimaryKey)
            .Concat(tableModel.Columns.Where(x => !x.PrimaryKey))
            .ToArray();

        list += columns
            .Select(x => BuildColumnModel(x, schema))
            .SequenceJoin(x => x += ",");

        list += InstructionType.TabMinus;
        list += $"FROM {tableModel.Name} x";

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

    private string BuildColumnModel(ColumnModel columnModel, SchemaModel schemaModel)
    {
        return columnModel.CanShowValue(schemaModel.Security) switch
        {
            true => $"x.[{columnModel.Name}]" + displayAs(),

            false => $"HASHBYTES('SHA2_256', {castAs(columnModel.Name, columnModel.DataType)})" + displayAs(columnModel.Name),
        };

        string displayAs(string? defaultName = null) => columnModel.ShortName switch
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
}
