using FluentAssertions;
using SqlGenerator.sdk.Application;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlGenerator.sdk.Test;

public class MasterTableTests
{
    [Fact]
    public void GivenMasterListFilter_WhenFiltered_ShouldPass()
    {
        var dataDictionary = new (string tableName, string columnName, bool isIncluded)[]
        {
            new ("Table1", "Column_1_1", true),
            new ("Table1", "Column_1_2", true),
            new ("Table1", "Column_1_3", true),
            new ("Table2", "Column_2_1", true),
            new ("Table2", "Column_2_2", true),
            new ("Table2", "Column_2_3", true),
            new ("Table3", "Column_3_1", true),
            new ("Table3", "Column_3_2", false),
            new ("Table3", "Column_3_3", true),
            new ("Table3", "Column_3_4", false),
            new ("Table3", "Column_3_5", false),
            new ("Table3", "Column_3_6", false),
            new ("Table4", "Column_4_1", false),
            new ("Table4", "Column_4_2", false),
            new ("Table4", "Column_4_3", true),
            new ("Table4", "Column_4_4", true),
            new ("Table4", "Column_4_5", false),
            new ("Table4", "Column_4_6", false),
        };

        var masterTable = new MasterTableOption
        {
            Tables = new[]
            {
                "table1",
                "table2:*",
                "table3:Column_3_1",
                "table3:Column_3_3",
                "table4:*_*_3",
                "table4:*_*_4",
            },
        };

        foreach (var item in dataDictionary)
        {
            masterTable.IsIncluded(item.tableName, item.columnName).Should().Be(item.isIncluded);
        }
    }

    [Fact]
    public void GivenMasterList_WhenParsed_ShouldPass()
    {
        var masterTable = new MasterTableOption
        {
            Tables = new[]
            {
                "table1 => mapTable1",
                "table2:*",
                "table3:Column_3_1",
                "table3:Column_3_3=>mapTable3",
                "table4:*_*_3",
                "table4:*_*_4",
            },
        };

        var list = masterTable.GetDetails();

        var matchList = new (string tableName, string? columnName, string? mapToName)[]
        {
            ("table1", null, "mapTable1"),
            ("table2", "*", null),
            ("table3", "Column_3_1", null),
            ("table3", "Column_3_3", "mapTable3"),
            ("table4", "*_*_3", null),
            ("table4", "*_*_4", null),
        };

        list.Count.Should().Be(matchList.Length);

        list
            .Zip(matchList)
            .All(x => x.First == x.Second)
            .Should().BeTrue();
    }
}
