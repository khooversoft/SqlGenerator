using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace Toolbox.Test.Data;

public class StringTableTests
{
    [Fact]
    public void GivenStringRow_WhenSame_ShouldPass()
    {
        var row = new StringRow
        {
            "First",
            "Second",
        };

        row.Count.Should().Be(2);
        row[0].Should().Be("First");
        row[1].Should().Be("Second");

        var row2 = new StringRow
        {
            "First",
            "Second",
        };

        (row == row2).Should().BeTrue();
    }

    [Fact]
    public void GivenStringRow_WhenNotSame_ShouldPass()
    {
        var row = new StringRow
        {
            "First",
            "Second",
        };

        row.Count.Should().Be(2);
        row[0].Should().Be("First");
        row[1].Should().Be("Second");

        var row2 = new StringRow
        {
            "First",
            "Secondx",
        };

        (row != row2).Should().BeTrue();

        var row3 = new StringRow
        {
            "First",
            "Second",
            "Third",
        };

        (row != row3).Should().BeTrue();
    }

    [Fact]
    public void GivenStringTable_WhenSame_ShouldPass()
    {
        var table = new StringTable
        {
            new StringRow
            {
                "First",
                "Second",
            },
            new StringRow
            {
                "Third",
                "Fourth",
                "Fifth",
            }
        };

        table.Count.Should().Be(2);

        table[0].Count.Should().Be(2);
        table[1].Count.Should().Be(3);

        table[0][0].Should().Be("First");
        table[0][1].Should().Be("Second");

        table[1][0].Should().Be("Third");
        table[1][1].Should().Be("Fourth");
        table[1][2].Should().Be("Fifth");

        var table2 = new StringTable
        {
            new StringRow
            {
                "First",
                "Second",
            },
            new StringRow
            {
                "Third",
                "Fourth",
                "Fifth",
            }
        };

        (table == table2).Should().BeTrue();
    }

    [Fact]
    public void GivenStringTable_WhenNotSame_ShouldPass()
    {
        var table = new StringTable
        {
            new StringRow
            {
                "First",
                "Second",
            },
            new StringRow
            {
                "Third",
                "Fourth",
                "Fifth",
            }
        };

        table.Count.Should().Be(2);

        table[0].Count.Should().Be(2);
        table[1].Count.Should().Be(3);

        table[0][0].Should().Be("First");
        table[0][1].Should().Be("Second");

        table[1][0].Should().Be("Third");
        table[1][1].Should().Be("Fourth");
        table[1][2].Should().Be("Fifth");

        var table2 = new StringTable
        {
            new StringRow
            {
                "First",
                "Second",
            },
            new StringRow
            {
                "Third",
                "Fourth",
                "Fifth",
            },
            new StringRow
            {
                "Six",
                "Seven",
            }
        };

        (table != table2).Should().BeTrue();
    }

    [Fact]
    public void GivenTableWithHeader_WhenGetColumn_ShouldPass()
    {
        var table = new StringTable(true)
        {
            new StringRow
            {
                "Date",
                "Name",
                "Value",
            },
            new StringRow
            {
                "20220810",
                "Name1",
                "1",
            },
            new StringRow
            {
                "20220911",
                "Name2",
                "2",
            },
            new StringRow
            {
                "20221012",
                "Name3",
                "3",
            },
        };

        var shouldHeaders = new[] { "Date", "Name", "Value" };
        table.Header.Count.Should().Be(shouldHeaders.Length);
        table.Header
            .Zip(shouldHeaders)
            .All(x => x.First == x.Second)
            .Should().BeTrue();

        table.Data.Count.Should().Be(3);

        testColumn(new[] { "20220810", "20220911", "20221012" }, table.GetColumnData("date").NotNull());
        testColumn(new[] { "20220810", "20220911", "20221012" }, table.GetColumnData(0));

        testColumn(new[] { "Name1", "Name2", "Name3" }, table.GetColumnData("name").NotNull());
        testColumn(new[] { "Name1", "Name2", "Name3" }, table.GetColumnData(1));

        testColumn(new[] { "1", "2", "3" }, table.GetColumnData("value").NotNull());
        testColumn(new[] { "1", "2", "3" }, table.GetColumnData(2));

        table.GetColumnData("not valid").Should().BeNull();

        void testColumn(IReadOnlyList<string> match, IReadOnlyList<string?> result)
        {
            result.Should().NotBeNull();
            result.Count.Should().Be(match.Count);

            result.Select(x => x ?? String.Empty)
                .Zip(match)
                .All(x => x.First == x.Second)
                .Should().BeTrue();
        }
    }

    [Fact]
    public void GivenTable_WhenColumnData_ShouldPass()
    {
        var table = new StringTable(true)
        {
            new StringRow
            {
                "Date",
                "Name",
                "Value",
            },
            new StringRow
            {
                "20220810",
                "Name1",
                "1",
            },
            new StringRow
            {
                "20220911",
                "Name2",
                "2",
            },
            new StringRow
            {
                "20221012",
                "Name3",
                "3",
            },
        };

        table.GetColumnData("Date").Should().NotBeNull();
        table.GetColumnData("not valid").Should().NotNull();
        table.GetColumnData(null!).Should().NotNull();
        table.GetColumnData("").Should().NotNull();
        table.GetColumnData(0).Should().NotBeNull();
        table.GetColumnData(10).Should().NotNull();

        Action act = () => table.GetColumnData(-1);
        act.Should().Throw<ArgumentException>();
    }
}
