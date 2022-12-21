-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TL_DATES3]
AS
   SELECT
      x.[LNUM],
      x.[VAAUTHEXPDT],
      x.[APPRAISER_ASSIGNED_DT],
      HASHBYTES('SHA2_256', CAST(x.[SCORECARD_DEC_DATE] AS NVARCHAR(50))) AS [SCORECARD_DEC_DATE],
      x.[ADV_ACTION_MAIL_DATE],
      x.[UWEXPOVRD],
      x.[CREDIT_FILE_RECEIVED_DT],
      x.[FILE_COMPLETE_DT],
      x.[CLOSING_PKG_RECEIVED_DT],
      x.[LOAN_SPECIALIST_REVIEW_DT],
      x.[CREDIT_REVIEW_DT],
      x.[APPROVED_W_CONDITIONS_DT],
      x.[SENTPROC],
      x.[INTENT_TO_PROCEED_DT],
      x.[COUNTER_OFFER_ACCEPT_DATE],
      x.[COUNTER_OFFER_ISSUED],
      x.[UNDERWRITING_RESUBMIT_DATE],
      x.[NOTE_SENT_TO_SEC],
      x.[REGB_END_DATE],
      x.[CONSENT_DATE],
      x.[CONSENT_DECLINED_DATE],
      x.[WHL_LOAN_REG_DATE],
      x.[PREVREGB_END_DATE],
      x.[HOMESTY_COMPLT_DATE],
      x.[REHAB_COMPLETN_DATE],
      x.[REMOVE_RECOUR_REQ_DATE],
      x.[PRED_CLOSING_DT_AI_HLM],
      x.[PC_NOTE_RXD_DT],
      x.[PC_NOTE_SENT_DT],
      x.[FINCONDT],
      x.[CREDIT_FILE_ACCEPTED_DT],
      x.[CLOSING_PKG_ACCEPTED_DT],
      x.[FINAL_NOTE],
      x.[ORIG_RECORDED_MTG],
      x.[ALLONGE],
      x.[FINAL_TITLE_PLCY_RCVD_DATE],
      x.[TRUST_ADDENDUM_POA],
      x.[LOAN_IMPORT_UPDATE_COMP]
   FROM [clt_NetO].[GF_TL_DATES3] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
