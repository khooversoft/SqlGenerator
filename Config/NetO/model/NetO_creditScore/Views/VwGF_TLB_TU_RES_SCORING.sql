-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TLB_TU_RES_SCORING]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      x.[PRODUCT_CODE],
      HASHBYTES('SHA2_256', x.[SIGN]) AS [SIGN],
      HASHBYTES('SHA2_256', x.[SCORE]) AS [SCORE],
      HASHBYTES('SHA2_256', x.[SCORING_IND_FLAG]) AS [SCORING_IND_FLAG],
      HASHBYTES('SHA2_256', x.[SCORE_DEROG_ALERT_FLAG]) AS [SCORE_DEROG_ALERT_FLAG],
      x.[FIRST_FACTOR],
      x.[SECOND_FACTOR],
      x.[THIRD_FACTOR],
      x.[FOURTH_FACTOR],
      HASHBYTES('SHA2_256', x.[SCORE_CARD_IND]) AS [SCORE_CARD_IND],
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
