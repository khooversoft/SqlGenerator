using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;
using Toolbox.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Application;

public enum CommandType
{
    None,
    Exclude,
    PrimaryKey,
    ExcludeView,
    ExcludeViewNot,
    Copy,
}

public record CommandOption
{
    public CommandType Type { get; init; } = CommandType.None;
    public string Pattern { get; init; } = null!;
    public string? Command { get; init; }

    public static CommandOption Create(string command) => CommandOptionTool.Parse(command).Verify();
}


public static class CommandOptionExtensions
{
    public static CommandOption Verify(this CommandOption? option)
    {
        option.NotNull();
        option.Type.AssertValid();
        option.Pattern.NotEmpty();

        return option;
    }
}