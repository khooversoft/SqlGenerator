-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLB_TU_RES_SCORING]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      x.[PRODUCT_CODE] AS [PRODUCT_CODE],
      HASHBYTES('SHA2_256', x.[SIGN]) AS [SIGN],
      HASHBYTES('SHA2_256', x.[SCORE]) AS [SCORE],
      HASHBYTES('SHA2_256', x.[SCORING_IND_FLAG]) AS [SCORING_IND_FLAG],
      HASHBYTES('SHA2_256', x.[SCORE_DEROG_ALERT_FLAG]) AS [SCORE_DEROG_ALERT_FLAG],
      x.[FIRST_FACTOR] AS [FIRST_FACTOR],
      x.[SECOND_FACTOR] AS [SECOND_FACTOR],
      x.[THIRD_FACTOR] AS [THIRD_FACTOR],
      x.[FOURTH_FACTOR] AS [FOURTH_FACTOR],
      HASHBYTES('SHA2_256', x.[SCORE_CARD_IND]) AS [SCORE_CARD_IND],
      x.[FIRSTFACTORNARRATIVE] AS [FIRSTFACTORNARRATIVE],
      x.[SECONDFACTORNARRATIVE] AS [SECONDFACTORNARRATIVE],
      x.[THIRDFACTORNARRATIVE] AS [THIRDFACTORNARRATIVE],
      x.[FOURTHFACTORNARRATIVE] AS [FOURTHFACTORNARRATIVE],
      x.[S_ALERTFLAG] AS [S_ALERTFLAG],
      x.[SEARCH_STATUS] AS [SEARCH_STATUS],
      x.[FILEINQUIRIES_IMPACTEDSCORE] AS [FILEINQUIRIES_IMPACTEDSCORE],
      x.[NOSCOREREASON] AS [NOSCOREREASON]
   FROM [clt_NetO].[GF_TLB_TU_RES_SCORING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
