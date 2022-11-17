using FluentAssertions;
using SqlGenerator.sdk.Application;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlGenerator.sdk.Test;

public class CommandOptionTests
{
    [Fact]
    public void GivenBadCommand_WhenParsed_ShouldPass()
    {
        string cmd = "exclude GF_TL_LOAN_DATA.ONBOARD_DISB_STATUS";

        CommandOption? option = CommandOptionTool.Parse(cmd);
        option.Should().BeNull();
    }

    [Fact]
    public void GivenExcludeCommand_WhenParsed_ShouldPass()
    {
        string cmd = "exclude += GF_TL_LOAN_DATA.ONBOARD_DISB_STATUS";

        CommandOption? option = CommandOptionTool.Parse(cmd);
        option.Should().NotBeNull();
        option!.Type.Should().Be(CommandType.Exclude);
        option.Pattern.Should().Be("GF_TL_LOAN_DATA.ONBOARD_DISB_STATUS");
        option.Command.Should().BeNullOrWhiteSpace();
    }

    [Fact]
    public void GivenPrimaryKeyCommand_WhenParsed_ShouldPass()
    {
        string cmd = "primaryKey += WG_SYMBOL_XREF.TABLENAME";

        CommandOption? option = CommandOptionTool.Parse(cmd);
        option.Should().NotBeNull();
        option!.Type.Should().Be(CommandType.PrimaryKey);
        option.Pattern.Should().Be("WG_SYMBOL_XREF.TABLENAME");
        option.Command.Should().BeNullOrWhiteSpace();
    }

    [Fact]
    public void GivenViewColumnCommandWithCommandQuoted_WhenParsed_ShouldPass()
    {
        string cmd = "viewColumn += CommonMonthly.* = 'coalesce([{@InvestorLoanIdMap}].[OriginalLoanId], x.[BECU_AccountNumber]) AS [Original_BECU_AccountNumber]'";

        CommandOption? option = CommandOptionTool.Parse(cmd);
        option.Should().NotBeNull();
        option!.Type.Should().Be(CommandType.ViewColumn);
        option.Pattern.Should().Be("CommonMonthly.*");
        option.Command.Should().Be("coalesce([{@InvestorLoanIdMap}].[OriginalLoanId], x.[BECU_AccountNumber]) AS [Original_BECU_AccountNumber]");
    }
}
