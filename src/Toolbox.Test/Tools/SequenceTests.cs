using FluentAssertions;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace Toolbox.Test.Tools;

public class SequenceTests
{
    [Fact]
    public void GivenSingleSequence_WhenJoined_ShouldPass()
    {
        var list = Enumerable.Range(0, 10)
            .SequenceJoin(99)
            .ToList();

        list.Count.Should().Be(19);

        list
            .Where((x, i) => i % 2 == 0 ? x == i / 2 : x == 99)
            .Count().Should().Be(19);
    }

    [Fact]
    public void GivenSequence_WhenAdd_ShouldPass()
    {
        var sequence = new Sequence<string>();

        sequence += "first";
        sequence += "second";
        sequence += "third";

        sequence.Count.Should().Be(3);
        sequence[0].Should().Be("first");
        sequence[1].Should().Be("second");
        sequence[2].Should().Be("third");
    }

    [Fact]
    public void GivenSequence_WhenConstructed_ShouldPass()
    {
        var sequence = new Sequence<string>()
            + "first"
            + "second"
            + "third";

        sequence.Count.Should().Be(3);
        sequence[0].Should().Be("first");
        sequence[1].Should().Be("second");
        sequence[2].Should().Be("third");
    }

    [Fact]
    public void GivenSequence_WhenConstructedForJoin_ShouldPass()
    {
        string result = new Sequence<string>()
        {
            "first",
            "second",
            "third"
        }.Join();

        result.Should().Be("firstsecondthird");
    }
}
