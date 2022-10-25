-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TW_WF_PROCESS_MGR]
(
   [PROC_MGR_ID]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_PROCESS]                        nvarchar(8)          NULL,
   [EXTERNAL_CODE]                    nchar(20)            NULL,
   [EXT_CODE_DESC]                    nvarchar(20)         NULL,
   [EXP_COMP_DATE]                    datetime             NULL,
   [START_DATE]                       datetime             NULL,
   [END_DATE]                         datetime             NULL,
   [LAST_ACTION_DATE]                 datetime             NULL,
   [MODELS_STARTED]                   smallint             NULL,
   [MODELS_COMPLETED]                 smallint             NULL,
   [IS_COMPLETE]                      smallint             NULL,
   [RESERVED_BY]                      int                  NULL,
   [S_PROC_GROUP]                     nvarchar(8)          NULL,
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
WITH (DISTRIBUTION = HASH ([PROC_MGR_ID]), CLUSTERED COLUMNSTORE INDEX)
;
