using System.Collections;
using System.Collections.Concurrent;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Project;

public record Counter
{
    public string Step { get; init; } = null!;
    public string Name { get; init; } = null!;
    public int Count { get; init; }

    public static implicit operator Counter((string step, string name, int count) value) => new()
    {
        Step = value.step,
        Name = value.name,
        Count = value.count
    };
}

public class Counters : IEnumerable<Counter>
{
    private readonly ConcurrentQueue<Counter> _counters = new();

    public Counters() { }
    public Counters(string step) => Step = step;

    public string? Step { get; }

    public Counters Add(Counter counter) => this.Action(_ => _counters.Enqueue(counter.NotNull()));
    public Counters Add(IEnumerable<Counter> counters) => this.Action(_ => counters.NotNull().ForEach(x => _counters.Enqueue(x)));
    public Counters Add((string name, int counter) value) => Add((Step.NotNull(), value.name, value.counter));

    public IEnumerator<Counter> GetEnumerator() => ((IEnumerable<Counter>)_counters).GetEnumerator();
    IEnumerator IEnumerable.GetEnumerator() => ((IEnumerable)_counters).GetEnumerator();

    public static Counters operator +(Counters context, IEnumerable<Counter> counters) => context.Action(x => x.Add(counters));
}
