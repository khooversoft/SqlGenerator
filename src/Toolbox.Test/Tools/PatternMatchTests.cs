using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace Toolbox.Test.Tools;

public class PatternMatchTests
{
    [Theory]
    [InlineData("*", "name", true)]
    [InlineData("*suffix", "name", false)]
    [InlineData("*suffix", "namesuffix", true)]
    [InlineData("prefix*", "name", false)]
    [InlineData("prefix*", "prefixname", true)]
    [InlineData("prefix*suffix", "name", false)]
    [InlineData("prefix*suffix", "prefixname", false)]
    [InlineData("prefix*suffix", "namesuffix", false)]
    [InlineData("prefix*suffix", "prefixnamesuffix", true)]
    [InlineData("*.*", "table.column", true)]
    [InlineData("*.*_suffix", "table.column", false)]
    [InlineData("*.*_suffix", "table.column_suffix", true)]
    [InlineData("*.*sub*", "table.column", false)]
    [InlineData("*.*sub*", "table.pre_subSuffix", true)]
    [InlineData("table1.*sub*", "table.pre_subSuffix", false)]
    [InlineData("table*.*sub*", "table1.pre_subSuffix", true)]
    public void GivenMatch_WhenValue_ShouldPass(string matchFormat, string value, bool isMatchValue)
    {
        var isMatch = PatternMatch.IsMatch(matchFormat, value);
        isMatch.Should().Be(isMatchValue);
    }
}
