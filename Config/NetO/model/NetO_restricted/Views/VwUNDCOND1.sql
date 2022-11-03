-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwUNDCOND1]
AS
   SELECT
      x.[LNUM],
      x.[S_DISPOSITION],
      x.[S_UWOPT1],
      x.[S_UWOPT2],
      x.[S_UWOPT3],
      x.[S_UWOPT4],
      x.[S_UWOPT5],
      x.[S_UWOPT6],
      x.[INV_APPRV_DATE],
      x.[UNDW_EXP_DATE],
      x.[DOC_EXP_DATE],
      x.[DISPOSITION_DATE],
      x.[CREDSCORE],
      x.[QUALCODE],
      x.[UWCOMDBID],
      x.[UWCOMSN],
      x.[AUSCOMDBID],
      x.[AUSCOMSN],
      x.[S_TRGTINV],
      x.[UWENTITY],
      x.[CREDSCOVRD],
      x.[DELEGATED_ENDORSEMENT],
      x.[UW_INCOME_EXCEPTION_DESC],
      x.[EST_CRED_SCORE],
      x.[CREDIT_REPORT_REF],
      x.[S_CREDSCORE_OVERRIDE_REASON],
      x.[CS_OVR_REAS_OTHERDESC],
      x.[DECISIONTARGETDATE],
      x.[DISPOSITION_DATETIME]
   FROM [clt_NetO].[UNDCOND1] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
