-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_AssetAcq].[CommonSettlement]
(
	[BECUAccountNumber] [nvarchar](100) NOT NULL,
	[LoanNumber] [nvarchar](100) NULL,
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
	[DealId] [nvarchar](100) NULL,
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
WITH (DISTRIBUTION = HASH ([BECUAccountNumber]), CLUSTERED COLUMNSTORE INDEX)
GO
;
