-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_ASSET_VHCL_RV]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASSETID]                          int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_RV_TYPE]                        nvarchar(8)          NULL,
   [MILEAGE]                          int                  NULL,
   [NBR_AXLES]                        int                  NULL,
   [NBR_SLIDES]                       int                  NULL,
   [RV_LENGTH]                        numeric(16,6)        NULL,
   [SELF_CONTAINED_YN]                nchar(1)             NULL,
   [S_CATEGORY]                       nvarchar(8)          NULL,
   [S_MODEL_TYPE]                     nvarchar(8)          NULL,
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
