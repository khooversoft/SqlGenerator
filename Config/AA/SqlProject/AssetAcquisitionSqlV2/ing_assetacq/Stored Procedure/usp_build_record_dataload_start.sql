CREATE PROCEDURE [ing_assetacq].[usp_build_record_dataload_start]
  @DataLoadName nvarchar(256),
  @SourceFileName NVARCHAR(256),
  @DataLoadRunID NVARCHAR(256),
  @VendorID NVARCHAR(256),
  @MonthEndDate DATE,
  @DataLoadStartTime DATETIME,
  @PipelineName NVARCHAR(256),
  @SourceRowCount INT
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @currentDate DATETIME = GetUTCDate();

  INSERT INTO [clt_AssetAcq].[DataLoadStatus] (
    [DataLoadName],
    [DataLoadRunID],
    [VendorID],
    [MonthEndDate],
    [DataLoadStartTime],
    [DataLoadStatus],
    [PipelineName],
    [SourceFileName],
    [SourceRowCount],
    [RowCreatedDataTime]
  ) VALUES (
    @DataLoadName,
    @DataLoadRunID,
    @VendorID,
    @MonthEndDate,
    @DataLoadStartTime,
    'In-progress',
    @PipelineName,
    @SourceFileName,
    @SourceRowCount,
    @currentDate
  );
END