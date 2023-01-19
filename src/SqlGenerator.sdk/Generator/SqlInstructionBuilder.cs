using DataTools.sdk.Model;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.Model;
using System.Net.Sockets;
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
    private readonly SqlProjectOption _option;

    public SqlInstructionBuilder(PhysicalModel model, SqlProjectOption option)
    {
        _physicalModel = model.Verify();

        _option = option.NotNull();

        _sqlTableBuilder = new SqlTableBuilder(model);
        _sqlViewBuilder = new SqlViewBuilder(model, option);
    }

    public Instructions Build(BuildType buildType)
    {
        var list = new Instructions();

        list += (InstructionType.PushFolder, "Schema");
        list += _physicalModel.Schemas.Select(x => BuildSchemaModel(x, buildType));
        list += InstructionType.PopFolder;

        foreach (var schema in _physicalModel.Schemas.Where(x => x.ForTable()))
        {
            list += (InstructionType.PushFolder, schema.Name);
            list += (InstructionType.PushFolder, "Tables");

            list += _physicalModel.Tables
                .Where(x => x.Name.Schema == schema.Name)
                .Select(x => _sqlTableBuilder.BuildTableModel(x, buildType));

            list += InstructionType.PopFolder;
            list += InstructionType.PopFolder;
        }

        foreach (SchemaModel schema in _physicalModel.Schemas.Where(x => x.ForView()))
        {
            list += (InstructionType.PushFolder, schema.Name);
            list += (InstructionType.PushFolder, "Views");

            list += _physicalModel.Tables
                .Select(x => _sqlViewBuilder.BuildViewModel(x, buildType, schema));

            list += InstructionType.PopFolder;
            list += InstructionType.PopFolder;
        }

        list += CopyFiles();

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

    private Instructions CopyFiles()
    {
        var list = new Instructions();

        list += _physicalModel.Commands
            .Where(x => x.Type == CommandType.Copy)
            .Select(x => CopyFile(x));

        return list;
    }

    private Instructions CopyFile(CommandOption option)
    {
        var list = new Instructions();

        string file = Path.Combine(Path.GetDirectoryName(_option.ProjectOptionFile).NotEmpty(), option.Pattern)
            .Assert(x => File.Exists(x), x => $"CopyFile: File {x} does not exist");

        string path = Path.GetDirectoryName(option.Command).NotEmpty();

        list += (InstructionType.PushFolder, path);
        list += (InstructionType.Stream, Path.GetFileName(option.Command).NotEmpty());

        using (var read = new StreamReader(file))
        {
            while (!read.EndOfStream)
            {
                string line = read.ReadLine().NotEmpty();
                list += line;
            }
        }

        list += "GO";
        list += "";

        list += InstructionType.PopFolder;
        return list;
    }
}
