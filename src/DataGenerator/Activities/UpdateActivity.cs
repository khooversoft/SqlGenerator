using DataGenerator.Application;
using DataTools.sdk.Model;
using DataTools.sdk.Storage;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace DataGenerator.Activities;

internal class UpdateActivity
{
    private readonly ILogger<UpdateActivity> _logger;

    public UpdateActivity(ILogger<UpdateActivity> logger) => _logger = logger.NotNull();

    public Task Update(string optionFile, bool whatIf)
    {
        optionFile.NotEmpty();

        UpdateOption updateOption = UpdateOptionFile.Read(optionFile);
        updateOption.LogProperties("Updating...", _logger);

        DataDictionary current = DataDictionaryFile.Read(updateOption.CurrentFile);
        DataDictionary update = DataDictionaryFile.Read(updateOption.UpdateFile);

        update = ApplyOverrides(updateOption, update);

        IReadOnlyList<TableInfoDelta> deltas = CalculateDelta(current, update);
        Analysis(updateOption, deltas);
        ProposeDataDictionary(updateOption.UpdateFile, deltas);
        ProposeDataDictionaryForFilter(updateOption.UpdateFile, deltas, updateOption.TableFilterFile);

        if (!whatIf)
        {
            UpdateProject(updateOption, deltas);
        }

        return Task.CompletedTask;
    }

    private DataDictionary ApplyOverrides(UpdateOption updateOption, DataDictionary update)
    {
        var dict = updateOption.ColumnOverrides.ToDictionary(x => x.GetColumnKey(), x => x);

        return update with
        {
            Items = update.Items
                .Select(x => x with
                {
                    DataType = dict.TryGetValue(x.GetColumnKey(), out var columnOverride) ? columnOverride.DataType : x.DataType,
                }).ToArray(),
        };
    }

    private IReadOnlyList<TableInfoDelta> CalculateDelta(DataDictionary current, DataDictionary update)
    {
        var updateDict = update.Items.ToDictionary(x => x.GetColumnKey(), x => x);

        var updateColumns = current.Items
            .Select(x => new TableInfoDelta
            {
                Current = x,
                Update = updateDict.TryGetValue(x.GetColumnKey(), out var value) ? value : null,
            }).ToArray();

        var newColumns = update.Items
            .Select(x => x.GetColumnKey())
            .Except(current.Items.Select(x => x.GetColumnKey()))
            .Join(update.Items, x => x, x => x.GetColumnKey(), (o, i) => i)
            .Select(x => new TableInfoDelta
            {
                Update = x,
            }).ToArray();

        var list = updateColumns
            .Concat(newColumns)
            .Select(x => x.Update == null ? x : x with { Update = x.Update with { Ordinal = 0 } })
            .ToArray();

        int baseOrdinal = ((((list.Length + 10) / 10) + 1000) * 10);
        list = list
            .Select((x, i) => x with
            {
                Update = x.Update switch
                {
                    null => null,
                    not null => x.Update with { Ordinal = baseOrdinal + i },
                },
            }).ToArray();

        return list;
    }

    private void Analysis(UpdateOption option, IReadOnlyList<TableInfoDelta> deltas)
    {
        write(".update.delta.csv", deltas.Where(x => x.State == UpdateState.Update));
        write(".new.delta.csv", deltas.Where(x => x.State == UpdateState.New));

        WriteNewTables(deltas, option);
        WriteTableFilterVsDropList(option, deltas);

        void write(string extension, IEnumerable<TableInfoDelta> data)
        {
            string file = PathTool.SetFileExtension(option.UpdateFile, extension);
            _logger.LogInformation("Writing {file}", file);
            CsvFile.Write(file, data);
        }
    }

    private static void WriteNewTables(IReadOnlyList<TableInfoDelta> deltas, UpdateOption option)
    {
        var update = deltas
            .Where(x => x.Update != null)
            .Select(x => x.Update.NotNull().TableName.ToLower())
            .Distinct();

        var current = deltas
            .Where(x => x.Current != null)
            .Select(x => x.Current.TableName.ToLower())
            .Distinct();

        var newTables = update
            .Except(current)
            .OrderBy(x => x)
            .Select(x => new { TableName = x }.ToDynamic())
            .ToArray();

        string file = PathTool.SetFileExtension(option.UpdateFile, ".newTable.delta.csv");
        CsvFile.Write(file, newTables);
    }

    private void WriteTableFilterVsDropList(UpdateOption option, IReadOnlyList<TableInfoDelta> deltas)
    {
        if (option.TableFilterFile.IsEmpty() || option.TableDropFile.IsEmpty())
        {
            _logger.LogWarning("Skipping filter vs drop table list");
            return;
        }

        IReadOnlyList<string> tableList = MasterTableOptionFile.Read(option.TableFilterFile)
            .GetDetails()
            .Select(x => x.TableName)
            .ToArray();

        IReadOnlyList<string> dropList = File.ReadAllText(option.TableDropFile)
            .NotNull()
            .ToObject<IReadOnlyList<string>>()
            .NotNull();

        var tableNameHashSet = deltas
            .SelectMany(x => new[]
                {
                    x.Current?.TableName,
                    x.Update?.TableName,
                }
                .Where(y => y != null)
                .OfType<string>()
            )
            .Distinct(StringComparer.OrdinalIgnoreCase)
            .Func(x => new HashSet<string>(x, StringComparer.OrdinalIgnoreCase));

        var filesInDropNotInFilter = dropList
            .Except(tableList)
            .OrderBy(x => x)
            .Select(x => new { Table = x, IsKnown = tableNameHashSet.Contains(x) }.ToDynamic())
            .ToArray();

        string file = PathTool.SetFileExtension(option.UpdateFile, ".filterVsDrop.delta.csv");
        CsvFile.Write(file, filesInDropNotInFilter);
    }

    private void ProposeDataDictionary(string updateFile, IReadOnlyList<TableInfoDelta> deltas)
    {
        var list = CalculateProposeDataDictionary(deltas);

        string file = PathTool.SetFileExtension(updateFile, ".propose.dataDictionary.csv");
        _logger.LogInformation("Writing propose data dictionary {file}", file);
        CsvFile.Write(file, list);
    }

    private void ProposeDataDictionaryForFilter(string updateFile, IReadOnlyList<TableInfoDelta> deltas, string? tableFilterFile)
    {
        if (tableFilterFile.IsEmpty()) return;

        IReadOnlyList<string> tableList = File.ReadAllText(tableFilterFile)
            .NotNull()
            .ToObject<IReadOnlyList<string>>()
            .NotNull();

        var list = CalculateProposeDataDictionary(deltas)
            .Join(tableList, x => x.TableName, x => x, (x, _) => x, StringComparer.OrdinalIgnoreCase)
            .ToArray();

        string file = PathTool.SetFileExtension(updateFile, ".proposeFilter.dataDictionary.csv");
        _logger.LogInformation("Writing propose data dictionary {file}", file);
        CsvFile.Write(file, list);
    }

    private void UpdateProject(UpdateOption updateOption, IReadOnlyList<TableInfoDelta> deltas)
    {
        string versionSourceFile = PathTool.VersionFile(updateOption.CurrentFile);

        var list = CalculateProposeDataDictionary(deltas)
            .Select(x => x.ConvertTo().ConvertTo())
            .ToArray();

        _logger.LogInformation("Writing propose data dictionary {file}", versionSourceFile);
        CsvFile.Write(versionSourceFile, list);
    }

    private static IReadOnlyList<UpdateTableInfo> CalculateProposeDataDictionary(IReadOnlyList<TableInfoDelta> deltas) => deltas
        .Select(x => x.State switch
        {
            UpdateState.Current => x.Current switch
            {
                null => new UpdateTableInfo(x.Update.NotNull(), x.State),
                _ => new UpdateTableInfo(x.Current.NotNull(), x.State),
            },
            UpdateState.Update => new UpdateTableInfo(x.Update.NotNull(), x.State, x.Changes()),
            UpdateState.New => new UpdateTableInfo(x.Update.NotNull(), x.State),

            _ => throw new InvalidOperationException(),
        })
        .OrderBy(x => x.TableName)
        .ThenBy(x => x.Ordinal)
        .ToArray();

    private enum UpdateState
    {
        Current,
        Update,
        New
    }

    private record TableInfoDelta
    {
        public TableInfo Current { get; init; } = null!;
        public TableInfo? Update { get; init; }

        public UpdateState State => (Current != null, Update != null) switch
        {
            (true, true) when Delta().Count == 0 => UpdateState.Current,
            (true, true) => UpdateState.Update,
            (false, true) => UpdateState.New,
            (true, false) => UpdateState.Current,

            (false, false) => throw new InvalidOperationException(),
        };

        public IReadOnlyList<(string Field, string OriginalValue, string NewValue)> Delta()
        {
            Current.NotNull();

            var empty = ((string)null!, (string)null!, (string)null!);

            if (Update == null) return Array.Empty<(string, string, string)>();

            return new[]
            {
                Current.TableName == Update.TableName ? empty : ("TableName", Current.TableName, Update.TableName),
                Current.ColumnName == Update.ColumnName ? empty : ("ColumnName", Current.ColumnName, Update.ColumnName),
                Current.DataType == Update.DataType ? empty : ("DataType", Current.DataType, Update.DataType),
                Current.NotNull == Update.NotNull ? empty : ("NotNull", Current.NotNull.ToString(), Update.NotNull.ToString()),
                Current.PrimaryKey == Update.PrimaryKey ? empty : ("PrimaryKey", Current.PrimaryKey.ToString(), Update.PrimaryKey.ToString()),
            }
            .Where(x => x != empty)
            .ToArray();
        }

        public string Changes() => Delta()
            .Select(x => $"Column={x.Field}, Old={x.OriginalValue}, New={x.NewValue}")
            .Join("; ");
    }

    private record UpdateTableInfo : TableInfoModel
    {
        public UpdateTableInfo(TableInfo subject, UpdateState state, string? change = null)
        {
            TableName = subject.TableName;
            ColumnName = subject.ColumnName;
            DataType = subject.DataType;
            NotNull = subject.NotNull ? "NOT NULL" : "NULL";
            PrimaryKey = subject.PrimaryKey ? "Yes" : null;
            Restricted = subject.Restricted ? "Yes" : null;
            PII = subject.PII ? "Yes" : null;

            State = state.ToString();
            Change = change ?? string.Empty;
            Ordinal = subject.Ordinal;
        }

        public string State { get; init; }
        public string Change { get; init; }
        public int Ordinal { get; init; }
    }
}