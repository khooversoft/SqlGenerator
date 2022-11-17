using FluentAssertions;
using SqlGenerator.sdk.Application;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Test;

public class CommandFunctionTests
{
    [Fact]
    public void GivenNoCommandFunction_WhenSingle_ShouldPass()
    {
        string getValue(string value) => value + "_newDataValue";

        string line = "coalesce([InvestorLoanIdMap_Data].[OriginalLoanId], x.[BECU_AccountNumber]) AS [Original_BECU_AccountNumber]";

        var cmdFunction = new CommandFunction()
            .Add("alias", getValue);

        string result = cmdFunction.Resolve(line);
        result.NotNull();
        result.Should().Be("coalesce([InvestorLoanIdMap_Data].[OriginalLoanId], x.[BECU_AccountNumber]) AS [Original_BECU_AccountNumber]");
    }

    [Fact]
    public void GivenCommandFunction_WhenSingle_ShouldPass()
    {
        string getValue(string value) => value + "_newDataValue";

        string line = "coalesce([{alias(InvestorLoanIdMap)}].[OriginalLoanId], x.[BECU_AccountNumber]) AS [Original_BECU_AccountNumber]";

        var cmdFunction = new CommandFunction()
            .Add("alias", getValue);

        string result = cmdFunction.Resolve(line);
        result.NotNull();
        result.Should().Be("coalesce([InvestorLoanIdMap_newDataValue].[OriginalLoanId], x.[BECU_AccountNumber]) AS [Original_BECU_AccountNumber]");
    }

    [Fact]
    public void GivenTwoCommandFunctions_WhenProcess_ShouldResolve()
    {
        string getValue(string value) => value + "_1";
        string getValue2(string value) => value + "_2";

        string line = "{func2(InvestorLoanIdMap)} where x == '{func1(Value to equal)}'";

        var cmdFunction = new CommandFunction()
            .Add("func1", getValue)
            .Add("func2", getValue2);

        string result = cmdFunction.Resolve(line);
        result.NotNull();
        result.Should().Be("InvestorLoanIdMap_2 where x == 'Value to equal_1'");
    }

    [Fact]
    public void GivenBadCommandFunction_WhenSingle_ShouldFail()
    {
        string getValue(string value) => value + "_newDataValue";

        // No ending ")"
        string line = "coalesce([{alias(InvestorLoanIdMap}].[OriginalLoanId], x.[BECU_AccountNumber]) AS [Original_BECU_AccountNumber]";

        var cmdFunction = new CommandFunction()
            .Add("alias", getValue);

        Action a = () => cmdFunction.Resolve(line);
        a.Should().ThrowExactly<ArgumentException>();
    }

    [Fact]
    public void GivenCommandFunctionsWithEmptyParameter_WhenProcess_ShouldFail()
    {
        string getValue(string value) => value + "_1";
        string getValue2(string value) => value + "_2";

        string line = "{func2()} where x == '{func1(Value to equal)}'";

        var cmdFunction = new CommandFunction()
            .Add("func1", getValue)
            .Add("func2", getValue2);

        Action a = () => cmdFunction.Resolve(line);
        a.Should().ThrowExactly<ArgumentException>();
    }
}
