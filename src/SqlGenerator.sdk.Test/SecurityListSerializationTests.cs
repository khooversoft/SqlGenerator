using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataTools.sdk.Model;
using FluentAssertions;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Test;

public class SecurityListSerializationTests
{
    [Fact]
    public void WhenClassWithEmptySecurityList_WhenSerializeToJson_ShouldPass()
    {
        var model = new ColumnModelTest
        {
            Name = "Name1",
            NotNull = true,
            ColumnIndex = 4,
            Security = new SecurityList(),
        };

        string json = model.ToJson();
        json.Should().NotBeEmpty();

        ColumnModelTest target = json.ToObject<ColumnModelTest>()!;
        (model == target).Should().BeTrue();
    }

    [Fact]
    public void WhenClassWithSecurityList_WhenSerializeToJson_ShouldPass()
    {
        var model = new ColumnModelTest
        {
            Name = "Name1",
            NotNull = true,
            ColumnIndex = 4,
            Security = new SecurityList("pii"),
        };

        string json = model.ToJson();
        json.Should().NotBeEmpty();

        ColumnModelTest target = json.ToObject<ColumnModelTest>()!;
        (model == target).Should().BeTrue();
    }

    private record ColumnModelTest
    {
        public string Name { get; init; } = null!;
        public bool NotNull { get; init; }
        public int ColumnIndex { get; init; }
        public SecurityList Security { get; init; } = null!;
    }
}
