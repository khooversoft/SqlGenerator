-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_BRM_DEFN_GRID_DTL]
(
   [GRIDID]                           int                  NOT NULL,
   [DIM_OCC]                          int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_GRID_VERT_HORIZ]                nvarchar(8)          NULL,
   [S_GRID_OPERATOR]                  nvarchar(8)          NULL,
   [GRID_FIELD_NAME]                  nvarchar(20)         NULL,
   [GRID_LABEL_TEXT]                  nvarchar(40)         NULL,
   [GRID_LABEL_OCCS]                  int                  NULL,
   [GRID_LABEL_START_ROW]             int                  NULL,
   [GRID_LABEL_SPAN_ROWS]             int                  NULL,
   [GRID_LABEL_START_COL]             int                  NULL,
   [GRID_LABEL_SPAN_COLS]             int                  NULL,
   [GRID_TGT_VAL_OCCS]                int                  NULL,
   [GRID_TGT_VAL_START_COL]           int                  NULL,
   [GRID_TGT_VAL_START_ROW]           int                  NULL,
   [S_GRID_TGT_VAL_SPAN_TYPE]         nvarchar(8)          NULL,
   [FIELDID]                          int                  NULL,
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
