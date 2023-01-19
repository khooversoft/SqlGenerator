using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using Toolbox.Extensions;

namespace Toolbox.Test.Extensions;

public class StringExtensionTests
{
    [Theory]
    [InlineData(null, 10, "_", null)]
    [InlineData("Test", 10, "_", "Test")]
    [InlineData("Test", 3, "_", "Te_")]
    [InlineData("Test line data", 10, "...", "Test li...")]
    [InlineData("Test line data", 30, "...", "Test line data")]
    public void TrimTest_ShouldPass(string? subject, int maxLength, string marker, string? result)
    {
        string? trimResult = subject.Trim(maxLength, marker);
        trimResult.Should().Be(result);

        if (trimResult == null) return;
        if (trimResult == subject) return;

        trimResult.Length.Should().Be(maxLength);
    }

    [Theory]
    [InlineData("Table_Normal_Details", null, false)]
    [InlineData("Table_Amount_Details", "unknown", false)]
    [InlineData("Table_Amount_Details", "x", false)]
    [InlineData("Table_Amount_Details", "Amount", true)]
    [InlineData("Table_Amount_Details", "amount", false)]
    [InlineData("Table_Amount_Details", "Table", true)]
    [InlineData("Table_Balance_Accessibility", "Accessibility", true)]
    [InlineData("Table_Amount_Details", "T", true)]
    [InlineData("Table_Amount_Details", "s", true)]
    public void FindTest_ShouldPass(string subject, string? find, bool sucess)
    {
        string? findResult = subject.Find(find);
        ((sucess && findResult != null) || (!sucess && findResult == null)).Should().BeTrue();
    }

    [Theory]
    [InlineData("Table_Amount_Details", "Amount", true)]
    [InlineData("Table_Amount_Details", "amount", true)]
    [InlineData("Table_Amount_Details", "unknown", false)]
    public void FindCaseInsensitiveTest_ShouldPass(string subject, string? find, bool sucess)
    {
        string? findResult = subject.Find(find, StringComparison.OrdinalIgnoreCase);
        ((sucess && findResult != null) || (!sucess && findResult == null)).Should().BeTrue();
    }
}
