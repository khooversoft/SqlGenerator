using DataTools.sdk.Model;
using FluentAssertions;
using SqlGenerator.sdk.Model;

namespace SqlGenerator.sdk.Test;

public class ColumnSecurityTests
{
    [Fact]
    public void GivenNormalSchema_DifferentProtection_ShouldPass()
    {
        new ColumnModel { Security = new SecurityList() }.Security.CanShow("Unrestricted").Should().BeTrue();

        new ColumnModel { Security = new SecurityList("pii") }.Security.CanShow("Unrestricted").Should().BeFalse();
        new ColumnModel { Security = new SecurityList("pii") }.Security.CanShow("Restricted").Should().BeFalse();
        new ColumnModel { Security = new SecurityList("pii") }.Security.CanShow("PII").Should().BeTrue();

        new ColumnModel { Security = new SecurityList("Restricted") }.Security.CanShow("Unrestricted").Should().BeFalse();
        new ColumnModel { Security = new SecurityList("Restricted") }.Security.CanShow("Restricted").Should().BeTrue();
        new ColumnModel { Security = new SecurityList("Restricted") }.Security.CanShow("PII").Should().BeFalse();

        new ColumnModel { Security = new SecurityList("pii;Restricted") }.Security.CanShow("Unrestricted").Should().BeFalse();
        new ColumnModel { Security = new SecurityList("pii;Restricted") }.Security.CanShow("Restricted").Should().BeTrue();
        new ColumnModel { Security = new SecurityList("pii;Restricted") }.Security.CanShow("PII").Should().BeTrue();
    }
}
