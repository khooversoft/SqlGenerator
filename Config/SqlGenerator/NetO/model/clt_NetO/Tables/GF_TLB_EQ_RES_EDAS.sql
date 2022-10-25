-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLB_EQ_RES_EDAS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [EDAS_SCORE]                       smallint             NULL,
   [REGION_IND_TEXT]                  nvarchar(11)         NULL,
   [REGION_IND_CODE]                  nchar(1)             NULL,
   [REASON1]                          nvarchar(5)          NULL,
   [REASON2]                          nvarchar(5)          NULL,
   [REASON3]                          nvarchar(5)          NULL,
   [REASON4]                          nvarchar(5)          NULL,
   [REJECT_MSG_CODE]                  nchar(1)             NULL,
   [REASON_TEXT1]                     nvarchar(79)         NULL,
   [REASON_TEXT2]                     nvarchar(79)         NULL,
   [REASON_TEXT3]                     nvarchar(79)         NULL,
   [REASON_TEXT4]                     nvarchar(79)         NULL,
   [ENHANCED_DAS_IND]                 nchar(1)             NULL,
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
