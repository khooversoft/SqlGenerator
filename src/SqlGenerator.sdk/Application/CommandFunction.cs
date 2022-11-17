using DocumentFormat.OpenXml.Drawing.Charts;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tokenizer;
using Toolbox.Tokenizer.Token;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public class CommandFunction
{
    private ConcurrentDictionary<string, Func<string, string>> _functionDict = new(StringComparer.OrdinalIgnoreCase);

    public CommandFunction Add(string name, Func<string, string> function) => this.Action(_ => _functionDict[name.NotEmpty()] = function);

    public string Resolve(string line)
    {
        return GetParts(line) switch
        {
            null => line,
            IReadOnlyList<(bool IsFunction, string Data)> v => Resolve(v).Join(),
        };
    }

    private IReadOnlyList<string> Resolve(IReadOnlyList<(bool IsFunction, string Data)> items) => items
        .Select(x => x switch
        {
            (false, string data) v => v.Data,
            (true, string data) v => ParseFunction(v.Data).Func(x => _functionDict.TryGetValue(x.FunctionName, out var func) switch
            {
                true => func(x.Value),
                _ => throw new ArgumentException($"Unknown function {x.FunctionName}"),
            }),
        })
        .ToArray();

    private IReadOnlyList<(bool IsFunction, string Data)> GetParts(string line)
    {
        Stack<TokenValue> tokenStack = new StringTokenizer()
            .Add("{", "}")
            .Parse(line)
            .OfType<TokenValue>()
            .Reverse()
            .ToStack();

        if (tokenStack.Count == 0) return new List<(bool, string)>();

        var parts = new List<(bool isFunction, string data)>();

        while (tokenStack.TryPop(out TokenValue popValue))
        {
            if (popValue.Value == "{")
            {
                if (!tokenStack.TryPop(out popValue)) return new List<(bool, string)>();

                parts.Add((true, popValue.Value));

                if (!tokenStack.TryPop(out popValue) || popValue.Value != "}") return new List<(bool, string)>();
                continue;
            }

            parts.Add((false, popValue.Value));
        }

        return parts;
    }

    private static (string FunctionName, string Value) ParseFunction(string line)
    {
        // format: {functionName}({value})
        IReadOnlyList<TokenValue> tokens = new StringTokenizer()
            .Add("(", ")")
            .Parse(line)
            .OfType<TokenValue>()
            .ToArray();

        var pattern = new Func<TokenValue, string?>[]
        {
            x => x.Value,
            x => x.Value == "(" ? "(" : null,
            x => x.Value,
            x => x.Value == ")" ? ")" : null,
        };

        return tokens
            .Zip(pattern)
            .Select(x => x.Second(x.First))
            .TakeWhile(x => x != null)
            .ToArray() switch
        {
            string[] v when v.Length == 4 => new(tokens[0].Value, tokens[2].Value),

            _ => throw new ArgumentException($"Syntax error for function: {line}"),
        };
    }
}
