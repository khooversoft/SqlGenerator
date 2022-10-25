-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_BRM_LKUP_RULE_VALUE]
(
   [BRMID]                            int                  NOT NULL,
   [RULE_OCC]                         int                  NOT NULL,
   [RULE_ITEM_OCC]                    int                  NOT NULL,
   [RULE_ITEM_GRIDID]                 int                  NOT NULL,
   [RULE_ITEM_GRID_RSLT_ROW]          int                  NOT NULL,
   [RULE_ITEM_GRID_RSLT_COL]          int                  NOT NULL,
   [RULE_VALUE_OCC]                   int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [BRM_START_DATE]                   datetime             NULL,
   [BRM_END_DATE]                     datetime             NULL,
   [BRM_VALUE]                        numeric(16,6)        NULL,
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
WITH (DISTRIBUTION = HASH ([BRMID]), CLUSTERED COLUMNSTORE INDEX)
;
