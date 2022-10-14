using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Data;

namespace Toolbox.Test.Data;

public class StringTableAddTests
{
    [Fact]
    public void GivenTwoTablesWithSameColumns_WhenAdded_ShouldMerge()
    {
        var table1 = new StringTable(true)
        {
            new StringRow() + "Column1" + "Column2" + "Column3",
            new StringRow() + "R1C1" + "R1C2" + "R1C3",
            new StringRow() + "R2C1" + "R2C2" + "R2C3",
        };

        var table2 = new StringTable(true)
        {
            new StringRow() + "Column1" + "Column2" + "Column3",
            new StringRow() + "R3C1" + "R3C2" + "R3C3",
            new StringRow() + "R4C1" + "R4C2" + "R4C3",
        };

        var table3 = table1 + table2;

        var tableCompare = new StringTable()
        {
            new StringRow() + "Column1" + "Column2" + "Column3",
            new StringRow() + "R1C1" + "R1C2" + "R1C3",
            new StringRow() + "R2C1" + "R2C2" + "R2C3",
            new StringRow() + "R3C1" + "R3C2" + "R3C3",
            new StringRow() + "R4C1" + "R4C2" + "R4C3",
        };

        (table3 == tableCompare).Should().BeTrue();
    }

    [Fact]
    public void GivenTwoTablesNotWithSameColumns_WhenAdded_ShouldNotMerge()
    {
        var table1 = new StringTable(true)
        {
            new StringRow() + "Column1" + "Column2" + "Column3",
            new StringRow() + "R1C1" + "R1C2" + "R1C3",
            new StringRow() + "R2C1" + "R2C2" + "R2C3",
        };

        var table2 = new StringTable(true)
        {
            new StringRow() + "Column4" + "Column5" + "Column6",
            new StringRow() + "R3C4" + "R3C5" + "R3C5",
            new StringRow() + "R4C4" + "R4C5" + "R4C5",
        };

        var table3 = table1 + table2;

        var tableCompare = new StringTable()
        {
            new StringRow() + "Column1" + "Column2" + "Column3",
            new StringRow() + "R1C1" + "R1C2" + "R1C3",
            new StringRow() + "R2C1" + "R2C2" + "R2C3",
            new StringRow() + "" + "" + "",
            new StringRow() + "" + "" + "",
        };

        (table3 == tableCompare).Should().BeTrue();
    }

    [Fact]
    public void GivenTwoTablesWithSomeSameColumns_WhenAdded_ShouldMerge()
    {
        var table1 = new StringTable(true)
        {
            new StringRow() + "Column1" + "Column2" + "Column3",
            new StringRow() + "R1C1" + "R1C2" + "R1C3",
            new StringRow() + "R2C1" + "R2C2" + "R2C3",
        };

        var table2 = new StringTable(true)
        {
            new StringRow() + "Column1" + "Column3" + "Column4",
            new StringRow() + "R3C1" + "R3C3" + "R3C4",
            new StringRow() + "R4C1" + "R4C3" + "R4C4",
        };

        var table3 = new StringTable(true)
        {
            new StringRow() + "Column2" + "Column5" + "Column7",
            new StringRow() + "R5C2" + "R5C5" + "R5C7",
            new StringRow() + "R6C2" + "R6C5" + "R6C7",
        };

        var table4 = new StringTable(true)
        {
            new StringRow() + "ColumnA" + "ColumnB" + "Column3",
            new StringRow() + "R7CA" + "R7CB" + "R7C3",
            new StringRow() + "R8CA" + "R8CB" + "R8C3",
        };

        var tableMerged = table1 + table2 + table3 + table4;

        var tableCompare = new StringTable()
        {
            new StringRow() + "Column1" + "Column2" + "Column3",
            new StringRow() + "R1C1" + "R1C2" + "R1C3",
            new StringRow() + "R2C1" + "R2C2" + "R2C3",
            new StringRow() + "R3C1" + "" + "R3C3",
            new StringRow() + "R4C1" + "" + "R4C3",
            new StringRow() + "" + "R5C2" + "",
            new StringRow() + "" + "R6C2" + "",
            new StringRow() + "" + "" + "R7C3",
            new StringRow() + "" + "" + "R8C3",
        };

        (tableMerged == tableCompare).Should().BeTrue();
    }

}
