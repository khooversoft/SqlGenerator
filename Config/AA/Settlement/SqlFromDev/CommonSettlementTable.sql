/****** Object:  Table [clt_AssetAcq].[CommonSettlement]    Script Date: 2/3/2023 8:59:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [clt_AssetAcq].[CommonSettlement]
(
	[BECUAccountNumber] [nvarchar](50) NOT NULL,
	[LoanNumber] [bigint] NULL,
	[ProductType] [nvarchar](100) NULL,
	[ServiceFee] [decimal](16, 6) NULL,
	[Balance] [decimal](16, 6) NULL,
	[ParticipationBalance90] [decimal](16, 6) NULL,
	[DateInterestPaidTo] [datetime] NULL,
	[OriginalLoanToValueRatio] [decimal](16, 6) NULL,
	[NetInt] [decimal](16, 6) NULL,
	[Price] [decimal](16, 6) NULL,
	[PremiumDiscount] [decimal](16, 6) NULL,
	[FundsDue] [decimal](16, 6) NULL,
	[VendorId] [nvarchar](100) NULL,
	[DealId] [int] NULL,
	[HeldForSaleFlag] [nchar](1) NULL,
	[ParticipationRatio] [decimal](16, 6) NULL,
	[LoanSource] [nvarchar](100) NULL,
	[Channel] [nvarchar](100) NULL,
	[ASAP_RecordEffectiveDateTime] [datetime2](7) NOT NULL,
	[ASAP_DeleteDateTime] [datetime2](7) NULL,
	[ASAP_ROW_HASH] [nvarchar](64) NULL,
	[ASAP_DML_FLAG] [nvarchar](2) NULL,
	[ASAP_CREATED_DATE] [datetime2](7) NULL,
	[ASAP_UPDATED_DATE] [datetime2](7) NULL,
	[ASAP_LINEAGE_ID] [nvarchar](36) NULL,
	[ASAP_ACTIVITY_ID] [nvarchar](36) NULL,
	[ASAP_TRIGGER_ID] [nvarchar](36) NULL,
	[ASAP_SRC_FILEPATH] [nvarchar](1000) NULL
)
WITH
(
	DISTRIBUTION = HASH ( [BECUAccountNumber] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO


