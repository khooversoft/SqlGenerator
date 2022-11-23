-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_HOEPA_DATA]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[VERIFIED_INCOME] AS [VERIFIED_INCOME],
      x.[VERIFIED_DEBTS] AS [VERIFIED_DEBTS],
      x.[DISCOUNT_AMT] AS [DISCOUNT_AMT],
      x.[PROD_HAS_NEGAM] AS [PROD_HAS_NEGAM],
      x.[TOTAL_LOAN_COSTS] AS [TOTAL_LOAN_COSTS],
      x.[MAX_BONAFIDE_AMT] AS [MAX_BONAFIDE_AMT],
      x.[QM_QUALIFY_DTI] AS [QM_QUALIFY_DTI],
      x.[QM_QUALIFY_RATE] AS [QM_QUALIFY_RATE],
      x.[QM_QUALIFY_PIPMT] AS [QM_QUALIFY_PIPMT],
      x.[QM_QUALIFY_PITI] AS [QM_QUALIFY_PITI],
      x.[QM_RESIDUAL_INC] AS [QM_RESIDUAL_INC],
      x.[HOEPA_APR] AS [HOEPA_APR],
      x.[PREPAY_PEN_PASSES_QMS] AS [PREPAY_PEN_PASSES_QMS],
      x.[PREPAY_PEN_PASSES_QMR] AS [PREPAY_PEN_PASSES_QMR]
   FROM [clt_NetO].[WG_HOEPA_DATA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
