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
    private ConcurrentDictionary<string, Func<string[], string>> _functionDict = new(StringComparer.OrdinalIgnoreCase);
    private ConcurrentDictionary<string, string> _replaceVariables = new(StringComparer.OrdinalIgnoreCase);

    public CommandFunction Add(string name, Func<string[], string> function) => this.Action(_ => _functionDict[name.NotEmpty()] = function.NotNull());

    public CommandFunction Add(string name, string? variable)
    {
        if (variable.IsEmpty()) return this;

        _replaceVariables[name.NotEmpty()] = variable;
        return this;
    }

    public string Resolve(string line)
    {
        return GetParts(line) switch
        {
            null => line,
            IReadOnlyList<(bool IsFunction, string Data)> v when v.Count == 0 => line,

            IReadOnlyList<(bool IsFunction, string Data)> v => Resolve(v).Join(),
        };
    }

    private IReadOnlyList<string> Resolve(IReadOnlyList<(bool IsFunction, string Data)> items) => items
        .Select(x => x switch
        {
            (false, string data) v => v.Data,

            (true, string data) v => ParseFunction(v.Data) switch
            {
                null => _replaceVariables.TryGetValue(v.Data, out var variable) switch
                {
                    true => variable,
                    false => throw new ArgumentException($"Unknown variable {v.Data}"),
                },

                (string FunctionName, string[] Values) f => _functionDict.TryGetValue(f.FunctionName, out var func) switch
                {
                    true => func(f.Values),
                    _ => throw new ArgumentException($"Unknown function {f.FunctionName}"),
                }
            }
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

                if (!tokenStack.TryPop(out popValue) || popValue.Value != "}") throw new ArgumentException($"Syntax error: {line}");
                continue;
            }

            parts.Add((false, popValue.Value));
        }

        return parts;
    }

    private static (string FunctionName, string[] Values)? ParseFunction(string line)
    {
        // format: {functionName}({value})
        Stack<string> tokens = new StringTokenizer()
            .Add("(", ")")
            .UseSingleQuote()
            .Parse(line)
            .Select(x => x.ToString().NotEmpty())
            .Reverse()
            .ToStack();

        if (!tokens.TryPop(out string? functionName)) return null;
        if (!tokens.TryPop(out string? rightParam) || rightParam != "(") return null;

        string argsLine = tokens
            .TakeWhile(x => x != ")")
            .Join();

        string[] args = new StringTokenizer()
            .Add(",")
            .UseSingleQuote()
            .Parse(argsLine)
            .OfType<IToken>()
            .Select(x => x.Value.Trim())
            .Where(x => !x.IsEmpty() && x != ",")
            .ToArray();

        return (functionName, args);
    }
}
