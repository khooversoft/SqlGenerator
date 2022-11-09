using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public enum CommandType
{
    None,
    Exclude,
    PrimaryKey
}

public record CommandOption
{
    public CommandType Type { get; init; } = CommandType.None;
    public string Pattern { get; init; } = null!;
}


public static class CommandOptionTool
{
    public static CommandOption Verify(this CommandOption option)
    {
        option.NotNull();
        option.Type.AssertValid();
        option.Pattern.NotEmpty();

        return option;
    }

    public static CommandOption Create(string command) => CommandOptionTool.Parse(command)
        .Func(x => new CommandOption
        {
            Type = x.Type,
            Pattern = x.Pattern!,
        })
        .Verify();

    public static bool IsValid(string command) => CommandOptionTool.Parse(command).Type != CommandType.None;

    public static IReadOnlyList<CommandOption> FindCommandOption(this SqlProjectOption option, string tableName, string columnName) => option.CommandOptions
        .Where(x => PatternMatch.IsMatch(x.Pattern, $"{tableName}.{columnName}"))
        .ToArray();

    public static bool IsColumnExcluded(this SqlProjectOption option, string tableName, string columnName) => FindCommandOption(option, tableName, columnName)
        .Any(x => x.Type == CommandType.Exclude);

    public static bool IsColumnPrimaryKey(this SqlProjectOption option, string tableName, string columnName) => FindCommandOption(option, tableName, columnName)
        .Any(x => x.Type == CommandType.PrimaryKey);

    public static (CommandType Type, string? Pattern) Parse(string command)
    {
        var parts = command.Split('=', StringSplitOptions.RemoveEmptyEntries)
            .Select(x => x.Trim())
            .ToArray();

        return parts.Length switch
        {
            2 => parts[0].ToLower() switch
            {
                "exclude" => (CommandType.Exclude, parts[1]),
                "primarykey" => (CommandType.PrimaryKey, parts[1]),

                _ => (CommandType.None, null),
            },

            _ => (CommandType.None, null),
        };
    }
}
