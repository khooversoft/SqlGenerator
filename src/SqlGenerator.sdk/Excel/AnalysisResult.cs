using SqlGenerator.sdk.CsvStore;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;

namespace SqlGenerator.sdk.Excel;

public record AnalysisResult
{
    public bool NoData { get; init; }
    public int? AreaColumnCount { get; init; }
    public IReadOnlyList<StringRow>? DataAreaRows { get; init; }
    public StringTable Table { get; init; } = null!;

    public IReadOnlyList<TableInfo> TableInfos { get; init; } = null!;
}

