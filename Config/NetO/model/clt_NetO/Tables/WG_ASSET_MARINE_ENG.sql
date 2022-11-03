-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_ASSET_MARINE_ENG]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASSETID]                          int                  NOT NULL,
   [ROWCOUNTER]                       int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [NEW_YN]                           nchar(1)             NULL,
   [ENGINE_ID]                        nvarchar(64)         NULL,
   [ENGINE_YEAR]                      nvarchar(4)          NULL,
   [ENGINE_MAKE]                      nvarchar(20)         NULL,
   [ENGINE_MODEL]                     nvarchar(20)         NULL,
   [HORSEPOWER]                       int                  NULL,
   [CYLINDERS]                        int                  NULL,
   [POWER_TILT_YN]                    nchar(1)             NULL,
   [ENGINE_VALUE]                     numeric(16,6)        NULL,
   [HOURS]                            int                  NULL,
   [ENGINE_TITLE_NUM]                 nvarchar(64)         NULL,
   [ENGINE_MODEL_NUM]                 nvarchar(64)         NULL,
   [S_ENGINE_MFG]                     nvarchar(8)          NULL,
   [S_MULTIENGINETYPE]                nvarchar(8)          NULL,
   [S_ENGINE_COLOR]                   nvarchar(8)          NULL,
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
