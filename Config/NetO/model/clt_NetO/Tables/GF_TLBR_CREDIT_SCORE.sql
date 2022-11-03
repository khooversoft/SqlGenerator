-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLBR_CREDIT_SCORE]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [SCOREID]                          int                  NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [BORROWER_ID]                      nvarchar(20)         NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [BNUM]                             smallint             NULL,
   [SOURCE_TYPE]                      nvarchar(8)          NULL,
   [SCORE_DATE]                       datetime             NULL,
   [REASON_TYPE]                      nvarchar(8)          NULL,
   [MODEL_TYPE]                       nvarchar(8)          NULL,
   [OTHER_DESCRIPTION]                nvarchar(80)         NULL,
   [SCORE_VALUE]                      decimal(16,6)        NULL,
   [CREDREPOSSRCTYPEOTHERDESC]        nvarchar(50)         NULL,
   [FACTAINQUIRIESINDICATOR]          nchar(1)             NULL,
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
