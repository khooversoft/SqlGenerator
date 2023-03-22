CREATE TABLE [clt_AssetAcq].[DataLoadStatus]
(
  [DataLoadStatusID] INT IDENTITY(1, 1),
  [DataLoadName] NVARCHAR(256) NOT NULL,
  [DataLoadRunID] NVARCHAR(256) NOT NULL,
  [VendorID] NVARCHAR(256) NOT NULL,
  [MonthEndDate] DATE NOT NULL,
  [DataLoadStartTime] DATETIME NULL,
  [DataLoadEndTime] DATETIME NULL,
  [DataLoadStatus] NVARCHAR(25) NULL,
  [PipelineName] NVARCHAR(256) NULL,
  [SourceFileName] NVARCHAR(256) NULL,
  [SourceRowCount] INT NULL,
  [DestinationRowCount] INT NULL,
  [RowUpdatedDateTime] DATETIME NULL,
  [RowCreatedDataTime] DATETIME NULL
);
GO

CREATE INDEX DataLoadStatus_ix1 ON [clt_AssetAcq].[DataLoadStatus] ([DataLoadStatusID]);
GO

