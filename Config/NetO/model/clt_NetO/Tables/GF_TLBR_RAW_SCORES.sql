-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLBR_RAW_SCORES]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ROWSERIALNO]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [CREDIT_REPORT_ID]                 nvarchar(20)         NULL,
   [CREDIT_REP_SOURCE]                nvarchar(8)          NULL,
   [CREDIT_SCORE_DATE]                datetime             NULL,
   [CRDT_SC_EXCLU_REASON]             nvarchar(8)          NULL,
   [CRDT_SC_MODEL_NAME]               nvarchar(8)          NULL,
   [MODEL_OTHER_DESC]                 nvarchar(80)         NULL,
   [CREDIT_SCORE_VALUE]               decimal(16,6)        NULL,
   [OTHER_SOURCE]                     nvarchar(80)         NULL,
   [RANK_PERCENTILE]                  int                  NULL,
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
