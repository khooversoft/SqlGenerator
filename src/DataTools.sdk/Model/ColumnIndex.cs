using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTools.sdk.Model;

public enum ColumnIndex
{
    TableName = 0,
    ColumnName,
    DataType,
    NullOption,
    PrimaryKey
};


public sealed class ColumnIndexCollection
{
    private static readonly Dictionary<ColumnIndex, string> _nameIndex = new()
    {
        [ColumnIndex.TableName] = "Table Name",
        [ColumnIndex.ColumnName] = "Column Name",
        [ColumnIndex.DataType] = "Column Datatype",
        [ColumnIndex.NullOption] = "Column Null Option",
        [ColumnIndex.PrimaryKey] = "Primary Key",
    };

    public string this[ColumnIndex index] => Get(index);
    public string Get(ColumnIndex index) => _nameIndex[index];
    public int Count => _nameIndex.Count;

    public IReadOnlyList<(ColumnIndex Index, string LabelColumnName)> List() => _nameIndex
        .OrderBy(x => x.Key)
        .Select(x => (x.Key, x.Value))
        .ToArray();
}