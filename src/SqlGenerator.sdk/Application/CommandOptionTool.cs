using Toolbox.Extensions;
using Toolbox.Tokenizer;
using Toolbox.Tokenizer.Token;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public static class CommandOptionTool
{
    private record PatternToken(string Value);
    private record CommandToken(string Value);
    private record AfterToken(string Value);

    private static Func<IToken, object?>[][] _tokenParseTests = new Func<IToken, object?>[][]
    {
        new Func<IToken, object?>[]
        {
            x => x is TokenValue v && v.Value.EqualsIgnoreCase("exclude") ? CommandType.Exclude : null,
            x => x is TokenValue v && v.Value == "+=" ? "+=" : null,
            x => x is TokenValue v ? new PatternToken(v.Value) : null,
        },

        new Func<IToken, object?>[]
        {
            x => x is TokenValue v && v.Value.EqualsIgnoreCase("primaryKey") ? CommandType.PrimaryKey : null,
            x => x is TokenValue v && v.Value == "+=" ? "+=" : null,
            x => x is TokenValue v ? new PatternToken(v.Value) : null,
        },

        new Func<IToken, object?>[]
        {
            x => x is TokenValue v && v.Value.EqualsIgnoreCase("excludeView") ? CommandType.ExcludeView : null,
            x => x is TokenValue v && v.Value == "+=" ? "+=" : null,
            x => x is TokenValue v ? new PatternToken(v.Value) : null,
        },

        new Func<IToken, object?>[]
        {
            x => x is TokenValue v && v.Value.EqualsIgnoreCase("excludeView") ? CommandType.ExcludeViewNot : null,
            x => x is TokenValue v && v.Value == "-=" ? "-=" : null,
            x => x is TokenValue v ? new PatternToken(v.Value) : null,
        },

        new Func<IToken, object?>[]
        {
            x => x is TokenValue v && v.Value.EqualsIgnoreCase("copy") ? CommandType.Copy : null,
            x => x is TokenValue v && v.Value == "+=" ? "+=" : null,
            x => x is TokenValue v ? new PatternToken(v.Value) : (x is BlockToken b ? new PatternToken(b.Value) : null),
            x => x is TokenValue v && v.Value == "=>" ? "=>" : null,
            x => x is TokenValue v ? new CommandToken(v.Value) : (x is BlockToken b ? new CommandToken(b.Value) : null),
        },

        new Func<IToken, object?>[]
        {
            x => x is TokenValue v && v.Value.EqualsIgnoreCase("xrefTable") ? CommandType.XRefTable : null,
            x => x is TokenValue v && v.Value == "+=" ? "+=" : null,
            x => x is TokenValue v ? new PatternToken(v.Value) : (x is BlockToken b ? new PatternToken(b.Value) : null),
        },

        new Func<IToken, object?>[]
        {
            x => x is TokenValue v && v.Value.EqualsIgnoreCase("security") ? CommandType.Security : null,
            x => x is TokenValue v && v.Value == "+=" ? "+=" : null,
            x => x is TokenValue v ? new PatternToken(v.Value) : (x is BlockToken b ? new PatternToken(b.Value) : null),
            x => x is TokenValue v && v.Value == "=" ? "=" : null,
            x => x is TokenValue v ? new CommandToken(v.Value) : (x is BlockToken b ? new CommandToken(b.Value) : null),
        },
    };


    public static bool IsValid(string command) => Parse(command) != null;

    public static IReadOnlyList<CommandOption> FindCommandOption(this SqlProjectOption option, string tableName, string columnName) => option.CommandOptions
        .Where(x => PatternMatch.IsMatch(x.Pattern, $"{tableName}.{columnName}"))
        .ToArray();

    public static bool IsColumnExcluded(this SqlProjectOption option, string tableName, string columnName) => FindCommandOption(option, tableName, columnName)
        .Any(x => x.Type == CommandType.Exclude);

    public static bool IsColumnPrimaryKey(this SqlProjectOption option, string tableName, string columnName) => FindCommandOption(option, tableName, columnName)
        .Any(x => x.Type == CommandType.PrimaryKey);


    public static CommandOption? Parse(string command)
    {
        IReadOnlyList<IToken> tokens = new StringTokenizer()
            .UseCollapseWhitespace()
            .UseDoubleQuote()
            .UseSingleQuote()
            .Add("=", "+=", "-=", "=>")
            .Parse(command)
            .Where(x => x is TokenValue v ? !v.Value.IsEmpty() : true)
            .Select(x => x switch
            {
                TokenValue v => v with { Value = v.Value.Trim() },
                _ => x,
            })
            .ToArray();

        if (tokens.Count == 0) return null;

        object[]? results = _tokenParseTests
            .Select(x => x switch
            {
                var v when v.Length == tokens.Count => tokens
                    .Zip(x)
                    .Select(x1 => x1.Second(x1.First))
                    .TakeWhile(x1 => x1 != null)
                    .OfType<object>()
                    .ToArray(),

                _ => null,
            })
            .FirstOrDefault(x => x?.Length == tokens.Count);

        if (results == null) return null;

        return new CommandOption
        {
            Type = results.OfType<CommandType>().First(),
            Pattern = results.OfType<PatternToken>().First().Value,
            Command = results.OfType<CommandToken>().FirstOrDefault()?.Value,
        };
    }
}
