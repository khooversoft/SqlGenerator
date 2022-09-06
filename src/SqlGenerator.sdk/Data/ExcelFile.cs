using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using Microsoft.Extensions.Logging;
using Toolbox.Data;
using Toolbox.Tools;

namespace SqlGenerator.sdk.Excel;

public class ExcelFile
{
    private readonly ILogger<ExcelFile> _logger;
    public ExcelFile(ILogger<ExcelFile> logger) => _logger = logger;

    public StringTable Read(string file)
    {
        file.NotEmpty();
        StringTable stringTable = new StringTable();

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
                Sequence<string> rowList = new Sequence<string>();

                for (int rCnt1 = 0; rCnt1 < thesheetdata.ElementAt(rCnt).ChildElements.Count(); rCnt1++)
                {
                    Cell thecurrentcell = (Cell)thesheetdata.ElementAt(rCnt).ChildElements.ElementAt(rCnt1);
                    rowList += GetCellValue(thecurrentcell, workbookPart);
                }

                stringTable += rowList;
            }
        }

        _logger.LogInformation("Read {rows} rows, max columns {maxColumnCount}",
            stringTable.Count,
            stringTable.Max(x => x.Count)
            );

        return stringTable;
    }

    private static string GetCellValue(Cell cell, WorkbookPart workbookPart)
    {
        CellValue cellValue = cell.CellValue;

        string text = (cellValue == null) ? cell.InnerText : cellValue.Text;

        if (cell.DataType?.Value == CellValues.SharedString)
        {
            text = workbookPart.SharedStringTablePart.SharedStringTable
                .Elements<SharedStringItem>()
                .ElementAt(Convert.ToInt32(cell.CellValue.Text))
                .InnerText;
        }

        var cellText = (text ?? string.Empty).Trim();

        if (cell.StyleIndex != null)
        {
            var cellFormat = workbookPart.WorkbookStylesPart.Stylesheet.CellFormats.ChildElements[
                int.Parse(cell.StyleIndex.InnerText)] as CellFormat;

            if (cellFormat != null)
            {
                DateTime? date = CellType.GetDate(cellFormat.NumberFormatId, cellText);
                return date?.ToString("d") ?? string.Empty;
            }
        }

        return cellText;
    }
}
