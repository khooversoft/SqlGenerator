using Toolbox.Data;
using DataTools.sdk.Application;
using FluentAssertions;
using DataGenerator.Activities;
using Microsoft.Extensions.Logging.Abstractions;

namespace DataTools.test;

public class MappedDetailTests
{
    [Fact]
    public void GivenTable_WhenMappedToDetail_ShouldPass()
    {
        var table = new StringTable(true)
        {
            new StringRow() + "Source1"         + "Source2"         + "Mapped",
            new StringRow() + "SNAPSHOT_DATE"   + "SNAPSHOT_DATE"   + "SNAPSHOT_DATE",
            new StringRow() + "Loan_ID"         + "Loan_NBR"        + "AccountNumber",
            new StringRow() + "CREDIT_CLASS"    + ""                + "Credit_Class",
            new StringRow() + ""                + "CURR_BAL"        + "CurrentBalance",
        };

        var mappedDetails = table.ToMappedDetails();

        var expected = new MappedDetail[]
        {
            new MappedDetail { TableName = "Source1", ColumnName = "SNAPSHOT_DATE", MapToName = "SNAPSHOT_DATE" },
            new MappedDetail { TableName = "Source1", ColumnName = "Loan_ID", MapToName = "AccountNumber" },
            new MappedDetail { TableName = "Source1", ColumnName = "CREDIT_CLASS", MapToName = "Credit_Class" },

            new MappedDetail { TableName = "Source2", ColumnName = "SNAPSHOT_DATE", MapToName = "SNAPSHOT_DATE" },
            new MappedDetail { TableName = "Source2", ColumnName = "Loan_NBR", MapToName = "AccountNumber" },
            new MappedDetail { TableName = "Source2", ColumnName = "CURR_BAL", MapToName = "CurrentBalance" },
        };

        mappedDetails.Count.Should().Be(expected.Length);

        Enumerable.SequenceEqual(mappedDetails, expected).Should().BeTrue();
    }

    [Fact]
    public void GivenTables_WhenMapped_ShouldMerge()
    {
        var table = new StringTable(true)
        {
            new StringRow() + "Source1"         + "Source2"         + "Mapped",
            new StringRow() + "SNAPSHOT_DATE"   + "SNAPSHOT_DATE"   + "SNAPSHOT_DATE",
            new StringRow() + "Loan_ID"         + "Loan_NBR"        + "AccountNumber",
            new StringRow() + "CREDIT_CLASS"    + ""                + "Credit_Class",
            new StringRow() + ""                + "CURR_BAL"        + "CurrentBalance",
        };

        var mappedDetails = table.ToMappedDetails();

        var files = new DataFileContent[]
        {
            new DataFileContent
            {
                File = "file",
                TableName = "Source1",
                Table = new StringTable(true)
                {
                    new StringRow() + "SNAPSHOT_DATE"   + "Loan_ID"     + "CREDIT_CLASS",
                    new StringRow() + "120220101"       + "L101"        + "C101",
                    new StringRow() + "120220102"       + "L102"        + "C102",
                }
            },
            new DataFileContent
            {
                File = "file",
                TableName = "Source2",
                Table = new StringTable(true)
                {
                    new StringRow() + "SNAPSHOT_DATE"   + "Loan_NBR"    + "CURR_BAL",
                    new StringRow() + "220220101"       + "L201"        + "B201",
                    new StringRow() + "220220102"       + "L202"        + "B202",
                    new StringRow() + "220220103"       + "L203"        + "B203",
                }
            },
        };

        StringTable result = mappedDetails.Merge(files);

        var resultTable = new StringTable(true)
        {
            new StringRow() + "SNAPSHOT_DATE"   + "AccountNumber"   + "Credit_Class"        + "CurrentBalance",
            new StringRow() + "120220101"       + "L101"            + "C101"                + "",
            new StringRow() + "120220102"       + "L102"            + "C102"                + "",
            new StringRow() + "220220101"       + "L201"            + ""                    + "B201",
            new StringRow() + "220220102"       + "L202"            + ""                    + "B202",
            new StringRow() + "220220103"       + "L203"            + ""                    + "B203",
        };

        (result == resultTable).Should().BeTrue();
    }
}