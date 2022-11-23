-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TL_DATES3]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[VAAUTHEXPDT] AS [VAAUTHEXPDT],
      x.[APPRAISER_ASSIGNED_DT] AS [APPRAISER_ASSIGNED_DT],
      x.[SCORECARD_DEC_DATE] AS [SCORECARD_DEC_DATE],
      x.[ADV_ACTION_MAIL_DATE] AS [ADV_ACTION_MAIL_DATE],
      x.[UWEXPOVRD] AS [UWEXPOVRD],
      x.[CREDIT_FILE_RECEIVED_DT] AS [CREDIT_FILE_RECEIVED_DT],
      x.[FILE_COMPLETE_DT] AS [FILE_COMPLETE_DT],
      x.[CLOSING_PKG_RECEIVED_DT] AS [CLOSING_PKG_RECEIVED_DT],
      x.[LOAN_SPECIALIST_REVIEW_DT] AS [LOAN_SPECIALIST_REVIEW_DT],
      x.[CREDIT_REVIEW_DT] AS [CREDIT_REVIEW_DT],
      x.[APPROVED_W_CONDITIONS_DT] AS [APPROVED_W_CONDITIONS_DT],
      x.[SENTPROC] AS [SENTPROC],
      x.[INTENT_TO_PROCEED_DT] AS [INTENT_TO_PROCEED_DT],
      x.[COUNTER_OFFER_ACCEPT_DATE] AS [COUNTER_OFFER_ACCEPT_DATE],
      x.[COUNTER_OFFER_ISSUED] AS [COUNTER_OFFER_ISSUED],
      x.[UNDERWRITING_RESUBMIT_DATE] AS [UNDERWRITING_RESUBMIT_DATE],
      x.[NOTE_SENT_TO_SEC] AS [NOTE_SENT_TO_SEC],
      x.[REGB_END_DATE] AS [REGB_END_DATE],
      x.[CONSENT_DATE] AS [CONSENT_DATE],
      x.[CONSENT_DECLINED_DATE] AS [CONSENT_DECLINED_DATE],
      x.[WHL_LOAN_REG_DATE] AS [WHL_LOAN_REG_DATE],
      x.[PREVREGB_END_DATE] AS [PREVREGB_END_DATE],
      x.[HOMESTY_COMPLT_DATE] AS [HOMESTY_COMPLT_DATE],
      x.[REHAB_COMPLETN_DATE] AS [REHAB_COMPLETN_DATE],
      x.[REMOVE_RECOUR_REQ_DATE] AS [REMOVE_RECOUR_REQ_DATE],
      x.[PRED_CLOSING_DT_AI_HLM] AS [PRED_CLOSING_DT_AI_HLM],
      x.[PC_NOTE_RXD_DT] AS [PC_NOTE_RXD_DT],
      x.[PC_NOTE_SENT_DT] AS [PC_NOTE_SENT_DT],
      x.[FINCONDT] AS [FINCONDT],
      x.[CREDIT_FILE_ACCEPTED_DT] AS [CREDIT_FILE_ACCEPTED_DT],
      x.[CLOSING_PKG_ACCEPTED_DT] AS [CLOSING_PKG_ACCEPTED_DT],
      x.[FINAL_NOTE] AS [FINAL_NOTE],
      x.[ORIG_RECORDED_MTG] AS [ORIG_RECORDED_MTG],
      x.[ALLONGE] AS [ALLONGE],
      x.[FINAL_TITLE_PLCY_RCVD_DATE] AS [FINAL_TITLE_PLCY_RCVD_DATE],
      x.[TRUST_ADDENDUM_POA] AS [TRUST_ADDENDUM_POA],
      x.[LOAN_IMPORT_UPDATE_COMP] AS [LOAN_IMPORT_UPDATE_COMP]
   FROM [clt_NetO].[GF_TL_DATES3] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
