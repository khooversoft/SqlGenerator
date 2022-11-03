-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_SC_DECISION]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DECISION_INDICATOR] AS [DECISION_INDICATOR],
      x.[RECOMMENDATION_TEXT] AS [RECOMMENDATION_TEXT]
   FROM [clt_NetO].[WG_SC_DECISION] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
