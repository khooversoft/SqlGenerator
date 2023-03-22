CREATE PROCEDURE [ing_assetacq].[usp_build_record_dataload_complete]
  @DataLoadName nvarchar(256),
  @SourceFileName NVARCHAR(256),
  @DataLoadEndTime DATETIME,
  @DataLoadStatus NVARCHAR(25),
  @DestinationRowCount INT
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @currentDate DATETIME = GetUTCDate();

  UPDATE  [clt_AssetAcq].[DataLoadStatus]
  SET     [DataLoadEndTime] = @DataLoadEndTime,
          [DataLoadStatus] = @DataLoadStatus,
          [DestinationRowCount] = @DestinationRowCount
  WHERE   [DataLoadName] = @DataLoadName
  AND     [SourceFileName] = @SourceFileName;

END
