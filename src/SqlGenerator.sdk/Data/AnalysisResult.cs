using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;

namespace SqlGenerator.sdk.Data;

public record AnalysisResult
{
    public StringTable Table { get; init; } = null!;
    public IReadOnlyList<TableInfo> TableInfos { get; init; } = null!;

    public int HeaderCount => Table.Header.Count;
    public int RowCount => Table.Data.Count;
    public bool FirstRowIsHeader => Table.FirstRowIsHeader;
    public int MaxColumnsInData => Table.Data.Select(x => x.Count).Max();
}

