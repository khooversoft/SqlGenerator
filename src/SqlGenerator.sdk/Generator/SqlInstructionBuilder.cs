using DataTools.sdk.Model;
using SqlGenerator.sdk.Model;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Generator;

public enum BuildType
{
    SchemaOnly,
    Overwrite
}

public class SqlInstructionBuilder
{
    private readonly PhysicalModel _physicalModel;
    private readonly SqlTableBuilder _sqlTableBuilder;
    private readonly SqlViewBuilder _sqlViewBuilder;

    internal static readonly IReadOnlyList<string> _headers = new[]
    {
        "-- -----------------------------------------------------",
        "-- Auto generated",
        "-- -----------------------------------------------------",
        "",
    };

    public SqlInstructionBuilder(PhysicalModel model)
    {
        _physicalModel = model.Verify();
        _sqlTableBuilder = new SqlTableBuilder(model);
        _sqlViewBuilder = new SqlViewBuilder(model);
    }

    public Instructions Build(BuildType buildType)
    {
        var list = new Instructions();

        list += (InstructionType.PushFolder, "Schema");
        list += _physicalModel.Schemas.Select(x => BuildSchemaModel(x, buildType));
        list += InstructionType.PopFolder;

        foreach (var schema in _physicalModel.Schemas.Where(x => x.Security.ForTable()))
        {
            list += (InstructionType.PushFolder, schema.Name);

            list += (InstructionType.PushFolder, "Tables");
            list += _physicalModel.Tables
                .Where(x => x.Name.Schema == schema.Name)
                .Select(x => _sqlTableBuilder.BuildTableModel(x, buildType));

            list += InstructionType.PopFolder;
            list += InstructionType.PopFolder;
        }

        foreach (SchemaModel schema in _physicalModel.Schemas.Where(x => x.Security.ForView()))
        {
            list += (InstructionType.PushFolder, schema.Name);
            list += (InstructionType.PushFolder, "Views");

            list += _physicalModel.Tables
                .Select(x => _sqlViewBuilder.BuildViewModel(x, buildType, schema));

            list += InstructionType.PopFolder;
            list += InstructionType.PopFolder;
        }

        return list;
    }

    private Instructions BuildSchemaModel(SchemaModel schema, BuildType buildType)
    {
        var list = new Instructions();
        list += (InstructionType.Stream, $"{schema.Name}.sql");

        list += buildType switch
        {
            BuildType.SchemaOnly => $"CREATE SCHEMA {schema.Name};".ToEnumerable(),

            _ => new[]
            {
                $"IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = '{schema.Name}')",
                "BEGIN",
                $"  EXEC( 'CREATE SCHEMA {schema.Name};' )",
                "END",
                "GO",
                "",
            }
        };

        return list;
    }
}
