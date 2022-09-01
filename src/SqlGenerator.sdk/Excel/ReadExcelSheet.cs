using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using Microsoft.Extensions.Logging;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Excel;

public class ReadExcelSheet
{
    private readonly ILogger<ReadExcelSheet> _logger;
    public ReadExcelSheet(ILogger<ReadExcelSheet> logger) => _logger = logger;

    public ExcelData Read(string file)
    {
        file.NotEmpty();
        ExcelData excelData = new ExcelData();

        _logger.LogInformation("Reading excel {file}", file);

        //Lets open the existing excel file and read through its content . Open the excel using OpenXml SDK
        using SpreadsheetDocument doc = SpreadsheetDocument.Open(file, false);

        //create the object for workbook part  
        WorkbookPart workbookPart = doc.WorkbookPart;
        Sheets thesheetcollection = workbookPart.Workbook.GetFirstChild<Sheets>();

        foreach (Sheet thesheet in thesheetcollection.OfType<Sheet>().Take(1))
        {
            //statement to get the worksheet object by using the sheet id  
            Worksheet theWorksheet = ((WorksheetPart)workbookPart.GetPartById(thesheet.Id)).Worksheet;
            SheetData thesheetdata = theWorksheet.GetFirstChild<SheetData>();

            for (int rCnt = 0; rCnt < thesheetdata.ChildElements.Count(); rCnt++)
            {
                List<string> rowList = new List<string>();

                for (int rCnt1 = 0; rCnt1 < thesheetdata.ElementAt(rCnt).ChildElements.Count(); rCnt1++)
                {
                    Cell thecurrentcell = (Cell)thesheetdata.ElementAt(rCnt).ChildElements.ElementAt(rCnt1);

                    //statement to take the integer value  
                    if (thecurrentcell.DataType != null)
                    {
                        if (thecurrentcell.DataType == CellValues.SharedString)
                        {
                            if (int.TryParse(thecurrentcell.InnerText, out int id))
                            {
                                SharedStringItem item = workbookPart.SharedStringTablePart.SharedStringTable.Elements<SharedStringItem>().ElementAt(id);
                                if (item.Text != null)
                                {
                                    rowList.Add(item.Text.Text.Trim());
                                }
                            }
                        }
                    }
                    else
                    {
                        rowList.Add(thecurrentcell.InnerText.Trim());
                    }
                }

                excelData += rowList;
            }
        }

        _logger.LogInformation("Read {rows} rows, max columns {maxColumnCount}",
            excelData.Rows.Count,
            excelData.Rows.Max(x => x.Columns.Count)
            );

        return excelData;
    }
}
