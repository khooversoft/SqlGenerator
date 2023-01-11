using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using SqlGenerator.sdk.Application;

namespace SqlGenerator.sdk.Test;

public class ShortNameTests
{
    private static List<NameMapRecord> _map = new List<NameMapRecord>()
    {
        new NameMapRecord { Long = "Amount", Short = "Amt" },
        new NameMapRecord { Long = "Accessibility", Short = "Access" },
        new NameMapRecord { Long = "Account", Short = "Acct" },
        new NameMapRecord { Long = "Detail", Short = "Dtl" },
    };

    [Theory]
    [InlineData("Table_Normal_Details", null, 30)]
    [InlineData("Table_Amount_Details", "Table_Amt_Details", 18)]
    [InlineData("Table_Amount_Details", "Table_Amt_Detail_", 17)]
    [InlineData("Table_Balance_Accessibility", "Table_Balance_Access", 26)]
    [InlineData("Table_Account_Ledger", "Table_Acct_Ledger", 18)]
    [InlineData("Table_ProviderManagment", null, 50)]
    public void GivenShortNameTable_WhenChanged_ShouldPass(string name, string? result, int maxLength)
    {
        string? subject = _map.ShortName(name, maxLength);
        subject.Should().Be(result);

        if (subject == null || result == null) return;
        subject.Length.Should().BeLessThanOrEqualTo(maxLength, $"subject={subject}, name={name}");
    }

    [Theory]
    [InlineData("Table_Normal_Details", null, 30)]
    [InlineData("TABLE_AMOUNT_DETAILS", "TABLE_AMT_DETAILS", 18)]
    [InlineData("TABLE_AMOUNT_DETAILS", "TABLE_AMT_DETAIL_", 17)]
    [InlineData("TABLE_BALANCE_ACCESSIBILITY", "TABLE_BALANCE_ACCESS", 26)]
    [InlineData("TABLE_ACCOUNT_LEDGER", "TABLE_ACCT_LEDGER", 18)]
    [InlineData("TABLE_PROVIDERMANAGMENT", null, 50)]
    [InlineData("TABLE_AMOUNTPROVIDERMANAGMENT", null, 50)]
    [InlineData("VwWG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY", "VwWG_CRM_CUSTOMER_ACCT_DTL_SUMM_", 32)]
    public void GivenShortNameTable_WithUpperCaseName_WhenChanged_ShouldPass(string name, string? result, int maxLength)
    {
        string? subject = _map.ShortName(name, maxLength, StringComparison.OrdinalIgnoreCase);
        subject.Should().Be(result);

        if (subject == null || result == null) return;
        subject.Length.Should().BeLessThanOrEqualTo(maxLength, $"subject={subject}, name={name}");
    }
}

