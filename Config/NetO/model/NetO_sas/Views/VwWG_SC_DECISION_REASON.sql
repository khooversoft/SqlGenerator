-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_SC_DECISION_REASON]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DECISION_INDICATOR] AS [DECISION_INDICATOR],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RSN_CTR] AS [RSN_CTR],
      x.[REASON_TXT] AS [REASON_TXT]
   FROM [clt_NetO].[WG_SC_DECISION_REASON] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
