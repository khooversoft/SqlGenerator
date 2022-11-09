-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_ASSET]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASSETID]                          int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_ASSET_TYPE]                     nvarchar(8)          NULL,
   [S_ASSET_PURPOSE]                  nvarchar(8)          NULL,
   [ASSET_VERIFIED]                   nchar(1)             NULL,
   [VERIFICATION_REQD]                nchar(1)             NULL,
   [OWNER_EST_VALUE]                  numeric(16,6)        NULL,
   [ACTUAL_VALUE]                     numeric(16,6)        NULL,
   [SALES_PRICE]                      numeric(16,6)        NULL,
   [ASSET_DESC]                       nvarchar(30)         NULL,
   [DISCOUNT_PCT]                     numeric(16,6)        NULL,
   [SALES_PRICE_VALUE]                decimal(16,6)        NULL,
   [DISCOUNT_PCTOVD]                  numeric(16,6)        NULL,
   [PRIMARY_COLLATERAL]               nchar(1)             NULL,
   [RECORD_CREATED]                   nvarchar(35)         NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]               datetime2(7)         NULL,
   [ASAP_SRC_NAME]                    nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([LNUM]), CLUSTERED COLUMNSTORE INDEX)
;
