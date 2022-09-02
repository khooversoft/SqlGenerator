using FluentAssertions;
using Toolbox.Extensions;

namespace Toolbox.Test.Data;

public class SequenceJoinTests
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
}
