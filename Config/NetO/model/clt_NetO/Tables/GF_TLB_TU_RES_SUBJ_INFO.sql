-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLB_TU_RES_SUBJ_INFO]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [CUSTOMER_ID]                      nvarchar(12)         NULL,
   [SUBJ_IDENTIFIER]                  nchar(1)             NULL,
   [FILE_NUM]                         nvarchar(2)          NULL,
   [FILE_HIT]                         nvarchar(20)         NULL,
   [SSN_MATCH_IND]                    nvarchar(15)         NULL,
   [CONS_STMT_IND]                    nchar(1)             NULL,
   [BUR_MKT_FILE_CNTRL]               nchar(2)             NULL,
   [BUR_SUBMKT_FILE_CNTRL]            nchar(2)             NULL,
   [SUPPRESSION_IND]                  nchar(1)             NULL,
   [FILE_SINCE_DT]                    datetime             NULL,
   [SUBJ_HIT_STATUS]                  nvarchar(10)         NULL,
   [SUBJ_RESTRICT_STATUS]             nchar(1)             NULL,
   [SUBJ_COUNTRY]                     nchar(1)             NULL,
   [CRDTDATASTS_MINOR]                nchar(1)             NULL,
   [CRDTDATASTS_DISPUTED]             nchar(1)             NULL,
   [DO_NOT_PROMOTE_IND]               nchar(1)             NULL,
   [DONOTPROMOTE_DTOFEXPIRE]          datetime             NULL,
   [CRDTDATASTS_FREEZE_IND]           nchar(1)             NULL,
   [CRDTDATASTS_FREEZE_TYPE]          nvarchar(15)         NULL,
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
