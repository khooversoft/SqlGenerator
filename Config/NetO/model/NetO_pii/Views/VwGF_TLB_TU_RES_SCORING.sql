-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLB_TU_RES_SCORING]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[PRODUCT_CODE],
      x.[SIGN],
      x.[SCORE],
      x.[SCORING_IND_FLAG],
      x.[SCORE_DEROG_ALERT_FLAG],
      x.[FIRST_FACTOR],
      x.[SECOND_FACTOR],
      x.[THIRD_FACTOR],
      x.[FOURTH_FACTOR],
      x.[SCORE_CARD_IND],
      x.[FIRSTFACTORNARRATIVE],
      x.[SECONDFACTORNARRATIVE],
      x.[THIRDFACTORNARRATIVE],
      x.[FOURTHFACTORNARRATIVE],
      x.[S_ALERTFLAG],
      x.[SEARCH_STATUS],
      x.[FILEINQUIRIES_IMPACTEDSCORE],
      x.[NOSCOREREASON]
   FROM [clt_NetO].[GF_TLB_TU_RES_SCORING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
