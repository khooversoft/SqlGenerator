-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_BRM_DEFN_FIELDS]
(
   [FIELDID]                          int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_FIELD_STATUS]                   nvarchar(8)          NULL,
   [FIELD_NAME]                       nvarchar(20)         NULL,
   [FIELD_TEXT]                       nvarchar(40)         NULL,
   [S_FIELD_CONTROL_TYPE]             nvarchar(8)          NULL,
   [S_FIELD_OPERATOR]                 nvarchar(8)          NULL,
   [S_FIELD_LIST_SOURCE]              nvarchar(8)          NULL,
   [S_FIELD_FORMAT]                   nvarchar(8)          NULL,
   [CURRENT_USER_DATETIME]            datetime             NULL,
   [CURRENT_USER_ID]                  int                  NULL,
   [S_USAGE_TYPE]                     nvarchar(8)          NULL,
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
WITH (DISTRIBUTION = HASH ([FIELDID]), CLUSTERED COLUMNSTORE INDEX)
;
