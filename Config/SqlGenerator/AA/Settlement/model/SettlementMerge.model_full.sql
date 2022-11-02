IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'clt_AssetAcq')
BEGIN
  EXEC( 'CREATE SCHEMA clt_AssetAcq;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq_restricted')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq_restricted;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq_pii')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq_pii;' )
END
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'clt_AssetAcq' AND TABLE_NAME = 'CommonSettlement')
BEGIN
   DROP TABLE [clt_AssetAcq].[CommonSettlement]
END
GO

CREATE TABLE [clt_AssetAcq].[CommonSettlement]
(
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [loan_number]                      bigint               NULL,
   [product_type]                     nvarchar(100)        NULL,
   [service_fee]                      decimal(16,6)        NULL,
   [balance]                          decimal(16,6)        NULL,
   [participation_balance_90]         decimal(16,6)        NULL,
   [date_interest_paid_to]            datetime             NULL,
   [original_loan_to_value_ratio]     decimal(16,6)        NULL,
   [net_int]                          decimal(16,6)        NULL,
   [price]                            decimal(16,6)        NULL,
   [premium_discount]                 decimal(16,6)        NULL,
   [funds_due]                        decimal(16,6)        NULL,
   [VendorID]                         nvarchar(100)        NULL,
   [DealID]                           int                  NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL
)
;
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq' AND TABLE_NAME = 'Vw_CommonSettlement')
BEGIN
   DROP VIEW [AssetAcq].[Vw_CommonSettlement]
END
GO


CREATE VIEW [AssetAcq].[Vw_CommonSettlement]
AS
   SELECT
      x.[loan_number],
      x.[product_type],
      x.[service_fee],
      x.[balance],
      x.[participation_balance_90],
      x.[date_interest_paid_to],
      x.[original_loan_to_value_ratio],
      x.[net_int],
      x.[price],
      x.[premium_discount],
      x.[funds_due],
      x.[VendorID],
      x.[DealID]
   FROM [clt_AssetAcq].[CommonSettlement] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
   GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_restricted' AND TABLE_NAME = 'Vw_CommonSettlement')
BEGIN
   DROP VIEW [AssetAcq_restricted].[Vw_CommonSettlement]
END
GO


CREATE VIEW [AssetAcq_restricted].[Vw_CommonSettlement]
AS
   SELECT
      x.[loan_number],
      x.[product_type],
      x.[service_fee],
      x.[balance],
      x.[participation_balance_90],
      x.[date_interest_paid_to],
      x.[original_loan_to_value_ratio],
      x.[net_int],
      x.[price],
      x.[premium_discount],
      x.[funds_due],
      x.[VendorID],
      x.[DealID]
   FROM [clt_AssetAcq].[CommonSettlement] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
   GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_pii' AND TABLE_NAME = 'Vw_CommonSettlement')
BEGIN
   DROP VIEW [AssetAcq_pii].[Vw_CommonSettlement]
END
GO


CREATE VIEW [AssetAcq_pii].[Vw_CommonSettlement]
AS
   SELECT
      x.[loan_number],
      x.[product_type],
      x.[service_fee],
      x.[balance],
      x.[participation_balance_90],
      x.[date_interest_paid_to],
      x.[original_loan_to_value_ratio],
      x.[net_int],
      x.[price],
      x.[premium_discount],
      x.[funds_due],
      x.[VendorID],
      x.[DealID]
   FROM [clt_AssetAcq].[CommonSettlement] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
   GO

