-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TW_WF_ACTION_MGR]
(
   [ACTION_ID]                        int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_WORKTYPE]                       nvarchar(8)          NULL,
   [S_ACTION_RESOLUTION]              nvarchar(8)          NULL,
   [S_PROC_MDL_RESOLUTION]            nvarchar(8)          NULL,
   [EXTERNAL_CODE]                    nchar(20)            NULL,
   [INSERT_DATE]                      datetime             NULL,
   [EXP_DATE_TO_COMPLETE]             datetime             NULL,
   [START_DATE]                       datetime             NULL,
   [END_DATE]                         datetime             NULL,
   [LAST_ACTION_DATE]                 datetime             NULL,
   [IS_BEING_WORKED]                  smallint             NULL,
   [ACTION_STATUS_FLAG]               smallint             NULL,
   [RESERVED_BY]                      int                  NULL,
   [S_PROC_GROUP]                     nvarchar(8)          NULL,
   [PROC_MDL_MGR_ID]                  int                  NULL,
   [RESERVE_DATE]                     datetime             NULL,
   [WF_SESSION_ID]                    int                  NULL,
   [OPENED_DATE]                      datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([ACTION_ID]), CLUSTERED COLUMNSTORE INDEX)
;
