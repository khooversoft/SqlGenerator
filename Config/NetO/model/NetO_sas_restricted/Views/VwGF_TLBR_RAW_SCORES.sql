-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLBR_RAW_SCORES]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[CREDIT_REPORT_ID] AS [CREDIT_REPORT_ID],
      x.[CREDIT_REP_SOURCE] AS [CREDIT_REP_SOURCE],
      HASHBYTES('SHA2_256', CAST(x.[CREDIT_SCORE_DATE] AS NVARCHAR(50))) AS [CREDIT_SCORE_DATE],
      x.[CRDT_SC_EXCLU_REASON] AS [CRDT_SC_EXCLU_REASON],
      x.[CRDT_SC_MODEL_NAME] AS [CRDT_SC_MODEL_NAME],
      x.[MODEL_OTHER_DESC] AS [MODEL_OTHER_DESC],
      HASHBYTES('SHA2_256', CAST(x.[CREDIT_SCORE_VALUE] AS NVARCHAR(50))) AS [CREDIT_SCORE_VALUE],
      x.[OTHER_SOURCE] AS [OTHER_SOURCE],
      x.[RANK_PERCENTILE] AS [RANK_PERCENTILE]
   FROM [clt_NetO].[GF_TLBR_RAW_SCORES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
