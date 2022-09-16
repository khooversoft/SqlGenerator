using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;

namespace Toolbox.Test.Data;

public class FuzzyMatchTest
{
    [Theory]
    [InlineData(null, null, true)]
    [InlineData(null, "", false)]
    [InlineData("", "", true)]
    [InlineData("abc", "abc", true)]
    [InlineData("abc", "abd", false)]
    public void GivenTwoString_FuzzyMatch_0_ShouldPass(string first, string second, bool isMatch)
    {
        new FuzzyMatch(0).Equals(first, second).Should().Be(isMatch);
    }
    
    [Theory]
    [InlineData(null, null, true)]
    [InlineData(null, "", false)]
    [InlineData("", "", true)]
    [InlineData("abc", "abc", true)]
    [InlineData("abc", "abd", false)]
    [InlineData("abc", "xabc", true)]
    [InlineData("abc", "abcx", true)]
    [InlineData("abcx", "abc", true)]
    [InlineData("xabc", "abc", true)]
    public void GivenTwoString_FuzzyMatch_1_ShouldPass(string first, string second, bool isMatch)
    {
        new FuzzyMatch(1).Equals(first, second).Should().Be(isMatch);
        new Distance(1).Equals(first, second).Should().Be(isMatch);
    }

    [Theory]
    [InlineData("Amount", "Amt", true)]
    [InlineData("AmountTotal", "AmtTotal", true)]
    [InlineData("TotalAmount", "AmtTotal", false)]
    [InlineData("TotalAmount", "AmountTotal", false)]
    public void GivenTwoString_Distance_3_ShouldPass(string first, string second, bool isMatch)
    {
        new Distance(3).Equals(first, second).Should().Be(isMatch);
        //var result = Distance.Calculate(first, second);
    }
}
