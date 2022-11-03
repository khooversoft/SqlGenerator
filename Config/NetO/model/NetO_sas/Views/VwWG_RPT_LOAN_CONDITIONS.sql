-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_RPT_LOAN_CONDITIONS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[CNDTN_CNTR] AS [CNDTN_CNTR],
      x.[CATEGORY] AS [CATEGORY],
      x.[CONDITION_TYPE] AS [CONDITION_TYPE],
      x.[CONDITION_STATE] AS [CONDITION_STATE],
      x.[DUE_DATE] AS [DUE_DATE],
      x.[MAINT_DATE] AS [MAINT_DATE],
      x.[WAIVED_DATE] AS [WAIVED_DATE],
      x.[ACTIVE_YN] AS [ACTIVE_YN],
      x.[SIGN_OFF_DATE] AS [SIGN_OFF_DATE],
      x.[CONDITION] AS [CONDITION],
      x.[UWCONDITION] AS [UWCONDITION]
   FROM [clt_NetO].[WG_RPT_LOAN_CONDITIONS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
