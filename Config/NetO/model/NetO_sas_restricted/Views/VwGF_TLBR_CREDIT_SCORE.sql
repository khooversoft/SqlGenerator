-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLBR_CREDIT_SCORE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[SCOREID] AS [SCOREID],
      x.[DBID] AS [DBID],
      x.[BORROWER_ID] AS [BORROWER_ID],
      x.[BNUM] AS [BNUM],
      x.[SOURCE_TYPE] AS [SOURCE_TYPE],
      x.[SCORE_DATE] AS [SCORE_DATE],
      x.[REASON_TYPE] AS [REASON_TYPE],
      x.[MODEL_TYPE] AS [MODEL_TYPE],
      x.[OTHER_DESCRIPTION] AS [OTHER_DESCRIPTION],
      x.[SCORE_VALUE] AS [SCORE_VALUE],
      x.[CREDREPOSSRCTYPEOTHERDESC] AS [CREDREPOSSRCTYPEOTHERDESC],
      x.[FACTAINQUIRIESINDICATOR] AS [FACTAINQUIRIESINDICATOR],
      x.[RANK_PERCENTILE] AS [RANK_PERCENTILE]
   FROM [clt_NetO].[GF_TLBR_CREDIT_SCORE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
