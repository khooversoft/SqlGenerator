using FluentAssertions;
using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlGenerator.sdk.Test;

public class ColumnSecurityTests
{
    [Fact]
    public void GivenNormalSchema_DifferentProtection_ShouldPass()
    {
        new ColumnModel { PII = false, Restricted = false }.CanShowValue(Security.Unrestricted).Should().BeTrue();
        new ColumnModel { PII = false, Restricted = false }.CanShowValue(Security.Restricted).Should().BeTrue();
        new ColumnModel { PII = false, Restricted = false }.CanShowValue(Security.PII).Should().BeTrue();

        new ColumnModel { PII = true, Restricted = false }.CanShowValue(Security.Unrestricted).Should().BeFalse();
        new ColumnModel { PII = true, Restricted = false }.CanShowValue(Security.Restricted).Should().BeFalse();
        new ColumnModel { PII = true, Restricted = false }.CanShowValue(Security.PII).Should().BeTrue();

        new ColumnModel { PII = false, Restricted = true }.CanShowValue(Security.Unrestricted).Should().BeFalse();
        new ColumnModel { PII = false, Restricted = true }.CanShowValue(Security.Restricted).Should().BeTrue();
        new ColumnModel { PII = false, Restricted = true }.CanShowValue(Security.PII).Should().BeFalse();

        new ColumnModel { PII = true, Restricted = true }.CanShowValue(Security.Unrestricted).Should().BeFalse();
        new ColumnModel { PII = true, Restricted = true }.CanShowValue(Security.Restricted).Should().BeTrue();
        new ColumnModel { PII = true, Restricted = true }.CanShowValue(Security.PII).Should().BeTrue();
    }
}
