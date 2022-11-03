-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TS_AUDIT_USER_LOCK]
(
   [UL_ID]                            int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [UL_LNUM]                          nchar(20)            NULL,
   [UL_ACTION]                        nchar(1)             NULL,
   [INSERT_USERID]                    int                  NULL,
   [INSERT_USERNAME]                  nvarchar(128)        NULL,
   [INSERT_TIMELOCKED]                datetime             NULL,
   [INSERT_LASTLOCKED]                datetime             NULL,
   [DELETE_USERID]                    int                  NULL,
   [DELETE_USERNAME]                  nvarchar(128)        NULL,
   [DELETE_TIMELOCKED]                datetime             NULL,
   [DELETE_LASTLOCKED]                datetime             NULL,
   [MODIFIED_DATETIME]                datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([UL_ID]), CLUSTERED COLUMNSTORE INDEX)
;
