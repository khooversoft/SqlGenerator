-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_RPT_AMOUNTS]
AS
   SELECT
      x.[LNUM],
      x.[AMORT_TERM],
      x.[APPRAISAL_VALUE],
      x.[CLTV],
      x.[DISCOUNT_AMT],
      x.[HLTV],
      x.[INTEREST_RATE],
      x.[LOCK_DAYS],
      x.[LTV],
      x.[MARGIN_PCT],
      x.[ORIG_LOAN_AMOUNT],
      x.[ORIGINATION_AMT],
      x.[PROP_MKT_VALUE],
      x.[INVLK_MARKET_PRICE],
      x.[INVLK_SRP_FACTOR],
      x.[YSP],
      x.[OVERAGE],
      x.[APR],
      x.[UNPAID_PRIN_BAL],
      x.[ARM_INDEX],
      x.[BASE_MARKET_PRICE],
      x.[BASE_MARKET_PRICE_OVR],
      x.[INVLK_MARKET_PRICE_OVR],
      x.[SERVICING_FEE],
      x.[TTL_MKT_PRICE_ADJUSTMENTS],
      x.[DEBT_RATIO],
      x.[HOUSING_RATIO],
      x.[BASE_LOAN_AMOUNT],
      x.[CONCURRENT_FINANCE_AMT],
      x.[DISCOUNT_POINTS],
      x.[HELOC_INITIAL_ADVANCE],
      x.[QUALIFYING_RATE]
   FROM [clt_NetO].[WG_RPT_AMOUNTS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
