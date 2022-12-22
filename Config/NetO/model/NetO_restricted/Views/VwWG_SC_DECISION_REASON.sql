-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_SC_DECISION_REASON]
AS
   SELECT
      x.[LNUM],
      x.[DECISION_INDICATOR],
      x.[BNUM],
      x.[DBID],
      x.[RSN_CTR],
      x.[REASON_TXT]
   FROM [clt_NetO].[WG_SC_DECISION_REASON] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
