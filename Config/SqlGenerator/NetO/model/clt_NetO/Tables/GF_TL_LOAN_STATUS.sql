-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TL_LOAN_STATUS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_LOAN_STATUS]                    nvarchar(8)          NULL,
   [S_UW_STATUS]                      nvarchar(8)          NULL,
   [S_LOCK_STATUS]                    nvarchar(8)          NULL,
   [LOCK_STATUS_DISPLAY]              nvarchar(30)         NULL,
   [SENT_TO_MIDANET]                  nchar(1)             NULL,
   [AP_ADMIN_ONLY]                    nchar(1)             NULL,
   [STATUS_MODIFIED_DT]               datetime             NULL,
   [EXT_LOAN_STATUS_VERSION_ID]       int                  NULL,
   [EXT_LOAN_STATUS_VERSION]          int                  NULL,
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
