-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_RPT_LOAN_CONDITIONS]
AS
   SELECT
      x.[LNUM],
      x.[CNDTN_CNTR],
      x.[CATEGORY],
      x.[CONDITION_TYPE],
      x.[CONDITION_STATE],
      x.[DUE_DATE],
      x.[MAINT_DATE],
      x.[WAIVED_DATE],
      x.[ACTIVE_YN],
      x.[SIGN_OFF_DATE],
      x.[CONDITION],
      x.[UWCONDITION]
   FROM [clt_NetO].[WG_RPT_LOAN_CONDITIONS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
