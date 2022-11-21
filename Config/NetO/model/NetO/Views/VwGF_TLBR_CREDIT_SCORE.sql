-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLBR_CREDIT_SCORE]
AS
   SELECT
      x.[LNUM],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[SCOREID],
      x.[DBID],
      x.[BNUM],
      x.[SOURCE_TYPE],
      x.[SCORE_DATE],
      x.[REASON_TYPE],
      x.[MODEL_TYPE],
      x.[OTHER_DESCRIPTION],
      x.[SCORE_VALUE],
      x.[BORROWER_ID],
      x.[CREDREPOSSRCTYPEOTHERDESC],
      x.[FACTAINQUIRIESINDICATOR],
      x.[RANK_PERCENTILE]
   FROM [clt_NetO].[GF_TLBR_CREDIT_SCORE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
