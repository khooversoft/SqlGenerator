using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;
using Toolbox.Tools;

namespace Toolbox.Test.Data;

public class StringTableColumnTests
{
    [Fact]
    public void GivenStringColumns_WhenConstructingTableToPivot_ShouldPass()
    {
        var sourceColumnData = new[]
        {
            new StringColumn("Date") + new [] { "20220810", "20220911", "20221012" },
            new StringColumn("Name") + new [] { "Name1", "Name2", "Name3" },
            new StringColumn("Value") + new [] { "1", "2", "3" },
        }.ToArray();

        var table1 = sourceColumnData.ToTable();

        var table2 = new StringTable(true)
        {
            new StringRow() + "Date" + "Name" + "Value",
            new StringRow() + "20220810" + "Name1" + "1",
            new StringRow() + "20220911" + "Name2" + "2",
            new StringRow() + "20221012" + "Name3" + "3",
        };

        (table1 == table2).Should().BeTrue();

        var columnData = table1.GetColumnsData().NotNull();
        Enumerable.SequenceEqual(sourceColumnData, columnData).Should().BeTrue();
    }

    [Fact]
    public void GivenStringColumns_WhenGettingColumns_ShouldPass()
    {
        var sourceColumnData = new[]
        {
            new StringColumn("Date") + new [] { "20220801", "20220802", "20220803" },
            new StringColumn("Date") + new [] { "20210901", "20210902", "20210903" },
            new StringColumn("Name") + new [] { "Name1", "Name2", "Name3" },
            new StringColumn("Value") + new [] { "1", "2", "3" },
        }.ToArray();

        var table1 = sourceColumnData.ToTable();

        var table2 = new StringTable(true)
        {
            new StringRow() + "Date" + "Name" + "Value",
            new StringRow() + "20220801" + "Name1" + "1",
            new StringRow() + "20220802" + "Name2" + "2",
            new StringRow() + "20220803" + "Name3" + "3",
            new StringRow() + "20210901",
            new StringRow() + "20210902",
            new StringRow() + "20210903",
        };

        (table1 == table2).Should().BeTrue();

        var columnData = table1.GetColumnsData().NotNull();

        var shouldBeColumnData = new[]
{
            new StringColumn("Date") + new [] { "20220801", "20220802", "20220803","20210901", "20210902", "20210903" },
            new StringColumn("Name") + new [] { "Name1", "Name2", "Name3" },
            new StringColumn("Value") + new [] { "1", "2", "3" },
        }.ToArray();

        Enumerable.SequenceEqual(shouldBeColumnData, columnData).Should().BeTrue();
    }

    [Fact]
    public void GivenStringColumns_WhenOddGettingColumns_ShouldPass()
    {
        var sourceColumnData = new[]
        {
            new StringColumn("Date") + new [] { "20220801", "20220802", "20220803" },
            new StringColumn("Date") + new [] { "20210901", "20210902", "20210903" },
            new StringColumn("Name") + new [] { "Name1", "Name2" },
            new StringColumn("Value") + new [] { "1" },
        }.ToArray();

        var table1 = sourceColumnData.ToTable();

        var table2 = new StringTable(true)
        {
            new StringRow() + "Date" + "Name" + "Value",
            new StringRow() + "20220801" + "Name1" + "1",
            new StringRow() + "20220802" + "Name2",
            new StringRow() + "20220803",
            new StringRow() + "20210901",
            new StringRow() + "20210902",
            new StringRow() + "20210903",
        };

        (table1 == table2).Should().BeTrue();
    }

    [Fact]
    public void GivenStringColumns_WhenOddEmptyGettingColumns_ShouldPass()
    {
        var sourceColumnData = new[]
        {
            new StringColumn("Name") + new [] { "Name1", "Name2" },
            new StringColumn("Date") + new [] { "20220801", "20220802", "20220803" },
            new StringColumn("Date") + new [] { "20210901", "20210902", "20210903" },
            new StringColumn("Value") + new [] { "1" },
        }.ToArray();

        var table1 = sourceColumnData.ToTable();

        var table2 = new StringTable(true)
        {
            new StringRow() + "Name"            + "Date"        + "Value",
            new StringRow() + "Name1"           + "20220801"    + "1",
            new StringRow() + "Name2"           + "20220802",
            new StringRow() + string.Empty      + "20220803",
            new StringRow() + string.Empty      + "20210901",
            new StringRow() + string.Empty      + "20210902",
            new StringRow() + string.Empty      + "20210903",
        };

        (table1 == table2).Should().BeTrue();
    }
}
