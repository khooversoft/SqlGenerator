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

public class StringTableDynamicTests
{
    [Fact]
    public void GivenDynamicList_WhenToTable_ShouldPass()
    {
        var list = new dynamic[]
        {
            new { Date = "20220901", Name = "Name1", Value = 10.5 }.ToDynamic(),
            new { Date = "20220902", Name = "Name2", Value = 11.5 }.ToDynamic(),
            new { Date = "20220903", Name = "Name3", Value = 12.5 }.ToDynamic(),
            new { Date = "20220904", Name = "Name4", Value = 13.5 }.ToDynamic(),
        };

        var table = list.ToTable();
        table.Should().NotBeNull();

        table.Count.Should().Be(list.Length + 1);

        testRow(table.Header, new[] { "Date", "Name", "Value" });

        list
            .Zip(table.Data)
            .All(x =>
            {
                return x.First.Date == x.Second[0] &&
                    x.First.Name == x.Second[1] &&
                    x.First.Value == double.Parse(x.Second[2].NotEmpty());
            })
            .Should().BeTrue();
    }

    private void testRow(StringRow row, string[] values)
    {
        row.Should().NotBeNull();
        row.Count.Should().Be(values.Length);
        Enumerable.SequenceEqual(row, values).Should().BeTrue();
    }
}
