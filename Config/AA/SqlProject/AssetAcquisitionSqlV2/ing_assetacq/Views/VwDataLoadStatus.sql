CREATE VIEW [ing_assetacq].[VwDataLoadStatus]
AS
  SELECT
    x.[DataLoadStatusID],
    x.[DataLoadName],
    x.[DataLoadRunID],
    x.[VendorID],
    x.[MonthEndDate],
    x.[DataLoadStartTime],
    x.[DataLoadEndTime],
    x.[DataLoadStatus],
    x.[PipelineName],
    x.[SourceFileName],
    x.[SourceRowCount],
    x.[DestinationRowCount],
    x.[RowUpdatedDateTime],
    x.[RowCreatedDataTime]
  FROM  [clt_AssetAcq].[DataLoadStatus] x
;
