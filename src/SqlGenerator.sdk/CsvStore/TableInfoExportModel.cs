//using CsvHelper.Configuration.Attributes;
//using SqlGenerator.sdk.Model;
//using Toolbox.Tools;

//namespace SqlGenerator.sdk.CsvStore;

//public record TableInfoExportModel
//{
//    [Name("Entity Name")]
//    public string EntityName { get; init; } = null!;
    
//    [Name("Table Name")]
//    public string TableName { get; init; } = null!;

//    [Name("Entity/Table Definition")]
//    public string TableDefinition { get; init; } = null!;

//    [Name("Attribute Name")]
//    public string AttributeName { get; init; } = null!;

//    [Name("Column Name")]
//    public string ColumnName { get; init; } = null!;

//    [Name("Column Index")]
//    public int ColumnIndex { get; init; }

//    [Name("Attribute/Column Definition")]
//    public string AttributeDefinition { get; init; } = null!;

//    [Name("Column Datatype")]
//    public string DataType { get; init; } = null!;

//    [Name("Column Null Option")]
//    public string? NotNull { get; init; }

//    [Name("Primary Key")]
//    public string? PrimaryKey { get; init; }

//    [Name("Restricted")]
//    public string? Restricted { get; init; }

//    [Name("PII")]
//    public string? PII { get; init; }
//}


//public static class TableInfoExportModelExtensions
//{
//    public static TableInfoExportModel ToTableInfoExport(this TableInfoModel subject, int columnIndex)
//    {
//        return new TableInfoExportModel
//        {
//            ColumnIndex = columnIndex,

//            EntityName = subject.TableName,
//            TableName = subject.TableName,
//            ColumnName = subject.ColumnName,
//            AttributeName = subject.ColumnName,
//            DataType = subject.DataType,
//            NotNull = subject.NotNull,
//            PrimaryKey = subject.PrimaryKey,
//            Restricted = subject.Restricted,
//            PII = subject.PII,
//        };
//    }
//}

