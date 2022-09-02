using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;

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
}
