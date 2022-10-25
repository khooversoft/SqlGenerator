-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_RAW_SCORES]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[CREDIT_REPORT_ID],
      x.[CREDIT_REP_SOURCE],
      x.[CREDIT_SCORE_DATE],
      x.[CRDT_SC_EXCLU_REASON],
      x.[CRDT_SC_MODEL_NAME],
      x.[MODEL_OTHER_DESC],
      x.[CREDIT_SCORE_VALUE],
      x.[OTHER_SOURCE],
      x.[RANK_PERCENTILE]
   FROM [clt_NetO].[GF_TLBR_RAW_SCORES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
