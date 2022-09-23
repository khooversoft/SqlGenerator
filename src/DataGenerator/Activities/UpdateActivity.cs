using DataGenerator.Application;
using DocumentFormat.OpenXml.Office2010.Excel;
using Microsoft.Extensions.Logging;
using SqlGenerator.sdk.Application;
using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Data;
using SqlGenerator.sdk.Excel;
using System.Linq;
using System.Net.Sockets;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace DataGenerator.Activities;

internal class UpdateActivity
{
    private readonly ILogger<UpdateActivity> _logger;

    public UpdateActivity(ILogger<UpdateActivity> logger)
    {
        _logger = logger.NotNull();
    }

    public Task Update(UpdateOption updateOption)
    {
        updateOption.LogProperties("Updating...", _logger);

        DataDictionary current = DataDictionaryFile.Read(updateOption.CurrentFile);
        DataDictionary update = DataDictionaryFile.Read(updateOption.UpdateFile);

        update = ApplyOverrides(updateOption, update);

        IReadOnlyList<TableInfoDelta> deltas = CalculateDelta(current, update);
        Analysis(updateOption, deltas);
        ProposeDataDictionary(updateOption.UpdateFile, deltas);
        ProposeDataDictionaryForFilter(updateOption.UpdateFile, deltas, updateOption.TableFilterFile);

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

        var newCount = updateColumns.Where(x => x.Update == null).Count();
        var delCount = updateColumns.Where(x => x.Current == null).Count();

        var newColumns = update.Items
            .Select(x => x.GetColumnKey())
            .Except(current.Items.Select(x => x.GetColumnKey()))
            .Join(update.Items, x => x, x => x.GetColumnKey(), (o, i) => i)
            .Select(x => new TableInfoDelta
            {
                Update = x,
            }).ToArray();

        var deletedColumns = current.Items
            .Select(x => x.GetColumnKey())
            .Except(update.Items.Select(x => x.GetColumnKey()))
            .Join(current.Items, x => x, x => x.GetColumnKey(), (o, i) => i)
            .Select(x => new TableInfoDelta
            {
                Current = x,
            }).ToArray();

        var list = updateColumns
            .Concat(newColumns)
            .Concat(deletedColumns)
            .ToArray();

        return list;
    }

    private void Analysis(UpdateOption option, IReadOnlyList<TableInfoDelta> deltas)
    {
        write(".update.delta.csv", deltas.Where(x => x.State == UpdateState.Update));
        write(".new.delta.csv", deltas.Where(x => x.State == UpdateState.New));
        write(".delete.delta.csv", deltas.Where(x => x.State == UpdateState.Delete));

        writeNewTables();
        writeTableFilterVsDropList();

        void write(string extension, IEnumerable<TableInfoDelta> data)
        {
            string file = PathTool.SetFileExtension(option.UpdateFile, extension);
            _logger.LogInformation("Writing {file}", file);
            CsvFile.Write(file, data);
        }

        void writeNewTables()
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
                .Select(x => new { TableName = x }.ToDynamic())
                .ToArray();

            string file = PathTool.SetFileExtension(option.UpdateFile, ".newTable.delta.csv");
            CsvFile.Write(file, newTables);
        }

        void writeTableFilterVsDropList()
        {
            if (option.TableFilterFile.IsEmpty() || option.TableDropFile.IsEmpty())
            {
                _logger.LogWarning("Skipping filter vs drop table list");
                return;
            }

            IReadOnlyList<string> tableList = File.ReadAllText(option.TableFilterFile)
                .NotNull()
                .ToObject<IReadOnlyList<string>>()
                .NotNull();

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
                .Select(x => new { Table = x, IsKnown = tableNameHashSet.Contains(x) }.ToDynamic())
                .ToArray();

            string file = PathTool.SetFileExtension(option.UpdateFile, ".filterVsDrop.delta.csv");
            CsvFile.Write(file, filesInDropNotInFilter);
        }
    }

    private void ProposeDataDictionary(string updateFile, IReadOnlyList<TableInfoDelta> deltas)
    {
        var list = deltas
            .Where(x => x.State != UpdateState.Delete)
            .Select(x => x.State switch
            {
                UpdateState.Current => new UpdateTableInfo(x.Update.NotNull(), x.State),
                UpdateState.Update => new UpdateTableInfo(x.Update.NotNull(), x.State, x.Changes()),
                UpdateState.New => new UpdateTableInfo(x.Update.NotNull(), x.State),

                _ => throw new InvalidOperationException(),
            })
            .ToArray();

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

        IReadOnlyList<UpdateTableInfo> list = deltas
            .Where(x => x.State != UpdateState.Delete)
            .Join(tableList, x => x.Update.NotNull().TableName, x => x, (x, _) => x, StringComparer.OrdinalIgnoreCase)
            .Select(x => x.State switch
            {
                UpdateState.Current => new UpdateTableInfo(x.Update.NotNull(), x.State),
                UpdateState.Update => new UpdateTableInfo(x.Update.NotNull(), x.State, x.Changes()),
                UpdateState.New => new UpdateTableInfo(x.Update.NotNull(), x.State),

                _ => throw new InvalidOperationException(),
            })
            .ToList();

        string file = PathTool.SetFileExtension(updateFile, ".proposeFilter.dataDictionary.csv");
        _logger.LogInformation("Writing propose data dictionary {file}", file);
        CsvFile.Write(file, list);
    }

    private enum UpdateState
    {
        Current,
        Update,
        New,
        Delete
    }

    private record TableInfoDelta
    {
        public TableInfo Current { get; init; } = null!;
        public TableInfo? Update { get; init; }

        public UpdateState State => (Current != null, Update != null) switch
        {
            (true, true) when Delta().Count() == 0 => UpdateState.Current,
            (true, true) => UpdateState.Update,
            (false, true) => UpdateState.New,
            (true, false) => UpdateState.Delete,

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
                //Current.Restricted == Update.Restricted ? empty : ("Restricted", Current.Restricted.ToString(), Update.Restricted.ToString()),
                //Current.PII == Update.PII ? empty : ("PII", Current.PII.ToString(), Update.PII.ToString()),
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
        }

        public string State { get; init; }
        public string Change { get; init; }
    }
}