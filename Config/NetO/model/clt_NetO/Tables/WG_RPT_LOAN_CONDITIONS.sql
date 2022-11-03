-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_RPT_LOAN_CONDITIONS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [CNDTN_CNTR]                       int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [CATEGORY]                         nvarchar(128)        NULL,
   [CONDITION_TYPE]                   nvarchar(128)        NULL,
   [CONDITION_STATE]                  nvarchar(20)         NULL,
   [DUE_DATE]                         datetime             NULL,
   [MAINT_DATE]                       datetime             NULL,
   [WAIVED_DATE]                      datetime             NULL,
   [ACTIVE_YN]                        nchar(1)             NULL,
   [SIGN_OFF_DATE]                    datetime             NULL,
   [CONDITION]                        nvarchar(2000)       NULL,
   [UWCONDITION]                      nvarchar(128)        NULL,
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
