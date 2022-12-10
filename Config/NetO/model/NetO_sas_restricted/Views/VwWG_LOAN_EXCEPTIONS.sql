-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_LOAN_EXCEPTIONS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[S_EXCEPTION_TYPE] AS [S_EXCEPTION_TYPE],
      x.[S_EXCEPTION_STATUS] AS [S_EXCEPTION_STATUS],
      x.[S_EXCEPTION_REASON] AS [S_EXCEPTION_REASON],
      x.[EXCEPTION_RATE] AS [EXCEPTION_RATE],
      x.[EXCEPTION_POINTS] AS [EXCEPTION_POINTS],
      x.[EXCEPTION_REQUESTED_BY_CID] AS [EXCEPTION_REQUESTED_BY_CID],
      x.[EXCEPTION_REQUESTED_DATE] AS [EXCEPTION_REQUESTED_DATE],
      x.[EXCEPTION_REQUEST_NOTE] AS [EXCEPTION_REQUEST_NOTE],
      x.[EXCEPTION_REFERENCE_ID] AS [EXCEPTION_REFERENCE_ID],
      x.[WORKFLOW_PROCESS_MODEL_ID] AS [WORKFLOW_PROCESS_MODEL_ID],
      x.[S_APPROVER1_CMSTYPE] AS [S_APPROVER1_CMSTYPE],
      x.[APPROVER1_CID] AS [APPROVER1_CID],
      x.[S_APPROVER1_DECISION] AS [S_APPROVER1_DECISION],
      x.[APPROVER1_DECISION_DATE] AS [APPROVER1_DECISION_DATE],
      x.[APPROVER1_NOTE] AS [APPROVER1_NOTE],
      x.[S_APPROVER2_CMSTYPE] AS [S_APPROVER2_CMSTYPE],
      x.[APPROVER2_CID] AS [APPROVER2_CID],
      x.[S_APPROVER2_DECISION] AS [S_APPROVER2_DECISION],
      x.[APPROVER2_DECISION_DATE] AS [APPROVER2_DECISION_DATE],
      x.[APPROVER2_NOTE] AS [APPROVER2_NOTE],
      x.[S_APPROVER3_CMSTYPE] AS [S_APPROVER3_CMSTYPE],
      x.[APPROVER3_CID] AS [APPROVER3_CID],
      x.[S_APPROVER3_DECISION] AS [S_APPROVER3_DECISION],
      x.[APPROVER3_DECISION_DATE] AS [APPROVER3_DECISION_DATE],
      x.[APPROVER3_NOTE] AS [APPROVER3_NOTE],
      x.[S_CANNED_REASON] AS [S_CANNED_REASON],
      x.[EXC_REQ_DISC_PCT] AS [EXC_REQ_DISC_PCT],
      x.[EXC_REQ_RATE_PCT] AS [EXC_REQ_RATE_PCT],
      x.[EXC_REQ_MARGIN_PCT] AS [EXC_REQ_MARGIN_PCT],
      x.[S_EXCEPTION_CATEGORY] AS [S_EXCEPTION_CATEGORY],
      x.[S_APPR1_EXC_REASON1] AS [S_APPR1_EXC_REASON1],
      x.[S_APPR2_EXC_REASON1] AS [S_APPR2_EXC_REASON1],
      x.[S_APPR3_EXC_REASON1] AS [S_APPR3_EXC_REASON1],
      x.[S_APPR1_EXC_REASON2] AS [S_APPR1_EXC_REASON2],
      x.[S_APPR2_EXC_REASON2] AS [S_APPR2_EXC_REASON2],
      x.[S_APPR3_EXC_REASON2] AS [S_APPR3_EXC_REASON2],
      x.[S_APPR1_EXC_REASON3] AS [S_APPR1_EXC_REASON3],
      x.[S_APPR2_EXC_REASON3] AS [S_APPR2_EXC_REASON3],
      x.[S_APPR3_EXC_REASON3] AS [S_APPR3_EXC_REASON3],
      x.[S_APPR1_DEC_REASON] AS [S_APPR1_DEC_REASON],
      x.[S_APPR2_DEC_REASON] AS [S_APPR2_DEC_REASON],
      x.[S_APPR3_DEC_REASON] AS [S_APPR3_DEC_REASON],
      x.[S_APPR1_DEC_REASON1] AS [S_APPR1_DEC_REASON1],
      x.[S_APPR1_DEC_REASON2] AS [S_APPR1_DEC_REASON2],
      x.[S_APPR2_DEC_REASON1] AS [S_APPR2_DEC_REASON1],
      x.[S_APPR2_DEC_REASON2] AS [S_APPR2_DEC_REASON2],
      x.[S_APPR3_DEC_REASON1] AS [S_APPR3_DEC_REASON1],
      x.[S_APPR3_DEC_REASON2] AS [S_APPR3_DEC_REASON2],
      x.[S_APPR1_EXC_REASON_DTL1] AS [S_APPR1_EXC_REASON_DTL1],
      x.[S_APPR2_EXC_REASON_DTL1] AS [S_APPR2_EXC_REASON_DTL1],
      x.[S_APPR3_EXC_REASON_DTL1] AS [S_APPR3_EXC_REASON_DTL1],
      x.[S_APPR1_EXC_REASON_DTL2] AS [S_APPR1_EXC_REASON_DTL2],
      x.[S_APPR2_EXC_REASON_DTL2] AS [S_APPR2_EXC_REASON_DTL2],
      x.[S_APPR3_EXC_REASON_DTL2] AS [S_APPR3_EXC_REASON_DTL2],
      x.[S_APPR1_EXC_REASON_DTL3] AS [S_APPR1_EXC_REASON_DTL3],
      x.[S_APPR2_EXC_REASON_DTL3] AS [S_APPR2_EXC_REASON_DTL3],
      x.[S_APPR3_EXC_REASON_DTL3] AS [S_APPR3_EXC_REASON_DTL3],
      x.[EXC_REQ_INTRO_RATE] AS [EXC_REQ_INTRO_RATE],
      x.[EXC_REQ_ANNUAL_FEE] AS [EXC_REQ_ANNUAL_FEE],
      x.[EXC_REQ_DURATION] AS [EXC_REQ_DURATION],
      x.[EXC_REQ_WAIVE_ANN_FEE] AS [EXC_REQ_WAIVE_ANN_FEE]
   FROM [clt_NetO].[WG_LOAN_EXCEPTIONS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
