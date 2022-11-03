-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_RPT_LOAN_REMARKS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [RMKID]                            int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ENTERED_DATE]                     datetime             NOT NULL,
   [USRID]                            int                  NOT NULL,
   [USERNAME]                         nvarchar(60)         NULL,
   [REMARK_TYPE]                      nvarchar(20)         NULL,
   [ACTIVITY]                         nvarchar(128)        NULL,
   [TASK]                             nvarchar(128)        NULL,
   [REMARK]                           nvarchar(max)        NULL,
   [REMARKS_TXT]                      nvarchar(max)        NULL,
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
WITH ( CLUSTERED INDEX ([LNUM], [RMKID]) )
;
