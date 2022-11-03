-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_RPT_INVESTOR]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [MLPSA_KEY]                        nvarchar(40)         NULL,
   [PACKAGE_ID]                       nvarchar(50)         NULL,
   [TRADECONFIRM_ID]                  nvarchar(50)         NULL,
   [FUNDING_ID]                       nvarchar(50)         NULL,
   [COUPON_STRIP]                     numeric(16,6)        NULL,
   [INVLK_LOCK_PERIOD]                nvarchar(128)        NULL,
   [INVLK_LOCK_PERIOD_DESC]           nvarchar(256)        NULL,
   [PIPELINE_LOCK_ID]                 int                  NULL,
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
