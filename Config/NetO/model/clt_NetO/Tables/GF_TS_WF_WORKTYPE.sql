-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TS_WF_WORKTYPE]
(
   [S_WORKTYPE]                       nvarchar(8)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_WT_TYPE]                        nchar(18)            NULL,
   [WT_EXECUTABLE]                    nvarchar(50)         NULL,
   [EST_TO_COMPLETE]                  smallint             NULL,
   [S_USERINTERFACE]                  nvarchar(8)          NULL,
   [S_REASSIGN_RULE]                  nvarchar(8)          NULL,
   [WEIGHT_TIER1]                     int                  NULL,
   [WEIGHT_TIER2]                     int                  NULL,
   [WEIGHT_TIER3]                     int                  NULL,
   [DISPLAY_IDX]                      smallint             NULL,
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
WITH (DISTRIBUTION = HASH ([S_WORKTYPE]), CLUSTERED COLUMNSTORE INDEX)
;
