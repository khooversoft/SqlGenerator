-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_BRM_DEFN_GRID]
(
   [GRIDID]                           int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_USAGE_TYPE]                     nvarchar(8)          NULL,
   [S_GRID_STATUS]                    nvarchar(8)          NULL,
   [S_GRID_CATEGORY]                  nvarchar(8)          NULL,
   [GRID_NAME]                        nvarchar(80)         NULL,
   [GRID_NBR_DIMS]                    int                  NULL,
   [RSLT_START_ROW]                   int                  NULL,
   [CREATED_BY]                       int                  NULL,
   [CREATED_DATE]                     datetime             NULL,
   [RSLT_START_COL]                   int                  NULL,
   [RSLT_SPAN_ROWS]                   int                  NULL,
   [RSLT_SPAN_COLS]                   int                  NULL,
   [CURRENT_USER_DATETIME]            datetime             NULL,
   [CURRENT_USER_ID]                  int                  NULL,
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
WITH (DISTRIBUTION = HASH ([GRIDID]), CLUSTERED COLUMNSTORE INDEX)
;
