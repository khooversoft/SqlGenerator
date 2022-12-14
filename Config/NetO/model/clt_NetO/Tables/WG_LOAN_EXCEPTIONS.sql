-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_LOAN_EXCEPTIONS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ROWSERIALNO]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_EXCEPTION_TYPE]                 nvarchar(8)          NULL,
   [S_EXCEPTION_STATUS]               nvarchar(8)          NULL,
   [S_EXCEPTION_REASON]               nvarchar(8)          NULL,
   [EXCEPTION_RATE]                   decimal(16,6)        NULL,
   [EXCEPTION_POINTS]                 decimal(16,6)        NULL,
   [EXCEPTION_REQUESTED_BY_CID]       int                  NULL,
   [EXCEPTION_REQUESTED_DATE]         datetime             NULL,
   [EXCEPTION_REQUEST_NOTE]           nvarchar(254)        NULL,
   [EXCEPTION_REFERENCE_ID]           nvarchar(20)         NULL,
   [WORKFLOW_PROCESS_MODEL_ID]        int                  NULL,
   [S_APPROVER1_CMSTYPE]              nvarchar(8)          NULL,
   [APPROVER1_CID]                    int                  NULL,
   [S_APPROVER1_DECISION]             nvarchar(8)          NULL,
   [APPROVER1_DECISION_DATE]          datetime             NULL,
   [APPROVER1_NOTE]                   nvarchar(254)        NULL,
   [S_APPROVER2_CMSTYPE]              nvarchar(8)          NULL,
   [APPROVER2_CID]                    int                  NULL,
   [S_APPROVER2_DECISION]             nvarchar(8)          NULL,
   [APPROVER2_DECISION_DATE]          datetime             NULL,
   [APPROVER2_NOTE]                   nvarchar(254)        NULL,
   [S_APPROVER3_CMSTYPE]              nvarchar(8)          NULL,
   [APPROVER3_CID]                    int                  NULL,
   [S_APPROVER3_DECISION]             nvarchar(8)          NULL,
   [APPROVER3_DECISION_DATE]          datetime             NULL,
   [APPROVER3_NOTE]                   nvarchar(254)        NULL,
   [S_CANNED_REASON]                  nvarchar(8)          NULL,
   [EXC_REQ_DISC_PCT]                 decimal(18,6)        NULL,
   [EXC_REQ_RATE_PCT]                 decimal(18,6)        NULL,
   [EXC_REQ_MARGIN_PCT]               decimal(18,6)        NULL,
   [S_EXCEPTION_CATEGORY]             nvarchar(8)          NULL,
   [S_APPR1_EXC_REASON1]              nvarchar(8)          NULL,
   [S_APPR2_EXC_REASON1]              nvarchar(8)          NULL,
   [S_APPR3_EXC_REASON1]              nvarchar(8)          NULL,
   [S_APPR1_EXC_REASON2]              nvarchar(8)          NULL,
   [S_APPR2_EXC_REASON2]              nvarchar(8)          NULL,
   [S_APPR3_EXC_REASON2]              nvarchar(8)          NULL,
   [S_APPR1_EXC_REASON3]              nvarchar(8)          NULL,
   [S_APPR2_EXC_REASON3]              nvarchar(8)          NULL,
   [S_APPR3_EXC_REASON3]              nvarchar(8)          NULL,
   [S_APPR1_DEC_REASON]               nvarchar(8)          NULL,
   [S_APPR2_DEC_REASON]               nvarchar(8)          NULL,
   [S_APPR3_DEC_REASON]               nvarchar(8)          NULL,
   [S_APPR1_DEC_REASON1]              nvarchar(8)          NULL,
   [S_APPR1_DEC_REASON2]              nvarchar(8)          NULL,
   [S_APPR2_DEC_REASON1]              nvarchar(8)          NULL,
   [S_APPR2_DEC_REASON2]              nvarchar(8)          NULL,
   [S_APPR3_DEC_REASON1]              nvarchar(8)          NULL,
   [S_APPR3_DEC_REASON2]              nvarchar(8)          NULL,
   [S_APPR1_EXC_REASON_DTL1]          nvarchar(8)          NULL,
   [S_APPR2_EXC_REASON_DTL1]          nvarchar(8)          NULL,
   [S_APPR3_EXC_REASON_DTL1]          nvarchar(8)          NULL,
   [S_APPR1_EXC_REASON_DTL2]          nvarchar(8)          NULL,
   [S_APPR2_EXC_REASON_DTL2]          nvarchar(8)          NULL,
   [S_APPR3_EXC_REASON_DTL2]          nvarchar(8)          NULL,
   [S_APPR1_EXC_REASON_DTL3]          nvarchar(8)          NULL,
   [S_APPR2_EXC_REASON_DTL3]          nvarchar(8)          NULL,
   [S_APPR3_EXC_REASON_DTL3]          nvarchar(8)          NULL,
   [EXC_REQ_INTRO_RATE]               decimal(16,6)        NULL,
   [EXC_REQ_ANNUAL_FEE]               decimal(16,6)        NULL,
   [EXC_REQ_DURATION]                 int                  NULL,
   [EXC_REQ_WAIVE_ANN_FEE]            nchar(1)             NULL,
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
