-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_BRM_LKUP_BASE]
(
   [BRMID]                            int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_USAGE_TYPE]                     nvarchar(8)          NULL,
   [LU_BRM_IDENTIFIER]                nvarchar(8)          NULL,
   [S_BRM_STATUS]                     nvarchar(8)          NULL,
   [S_BRM_TYPE]                       nvarchar(8)          NULL,
   [BRM_NAME]                         nvarchar(30)         NULL,
   [BRM_DESCRIPTION]                  nvarchar(80)         NULL,
   [BRM_START_DATE]                   datetime             NULL,
   [BRM_END_DATE]                     datetime             NULL,
   [S_CAP_CATEGORY]                   nvarchar(8)          NULL,
   [S_EFFECTIVITY_RULE]               nvarchar(8)          NULL,
   [CHANGE_EFF_DATE]                  datetime             NULL,
   [CURRENT_USER_DATETIME]            datetime             NULL,
   [CURRENT_USER_ID]                  int                  NULL,
   [CREATED_DATE]                     datetime             NULL,
   [CREATED_BY_USER_ID]               int                  NULL,
   [LAST_CHANGE_DATE]                 datetime             NULL,
   [LAST_CHANGE_USER_ID]              int                  NULL,
   [MESSAGE_TEXT]                     nvarchar(80)         NULL,
   [S_OVERRIDE_LEVEL]                 nvarchar(8)          NULL,
   [BRM_CATEGORY]                     nvarchar(8)          NULL,
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
