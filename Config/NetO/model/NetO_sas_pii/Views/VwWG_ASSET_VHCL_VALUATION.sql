-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_ASSET_VHCL_VALUATION]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[VALUATION_CNTR] AS [VALUATION_CNTR],
      x.[S_VALUATION_SOURCE] AS [S_VALUATION_SOURCE],
      x.[VALUATION_RESPONSE_ID] AS [VALUATION_RESPONSE_ID],
      x.[ACTIVE_YN] AS [ACTIVE_YN],
      x.[ELECTRONIC_YN] AS [ELECTRONIC_YN],
      x.[MILEAGE_ADJ] AS [MILEAGE_ADJ],
      x.[DEALER_OPTS_ADJ] AS [DEALER_OPTS_ADJ],
      x.[MANUFACTURER_OPTS_ADJ] AS [MANUFACTURER_OPTS_ADJ],
      x.[BOOK_EDITION] AS [BOOK_EDITION],
      x.[REGION] AS [REGION],
      x.[S_CLEAN_LEVEL] AS [S_CLEAN_LEVEL],
      x.[S_USE_FOR_LOAN_VAL] AS [S_USE_FOR_LOAN_VAL],
      x.[COLL_TRADE_BAM_VALUE] AS [COLL_TRADE_BAM_VALUE],
      x.[COLL_LOAN_BAM_VALUE] AS [COLL_LOAN_BAM_VALUE],
      x.[COLL_RETAIL_BAM_VALUE] AS [COLL_RETAIL_BAM_VALUE],
      x.[TOTAL_ADJUSTED_VALUE] AS [TOTAL_ADJUSTED_VALUE],
      x.[MILEAGE_YN] AS [MILEAGE_YN],
      x.[ADJUSTED_VALUE] AS [ADJUSTED_VALUE],
      x.[OPTIONS_VALUE] AS [OPTIONS_VALUE],
      x.[ENGINE_PRICING] AS [ENGINE_PRICING],
      x.[PRIMARYVALUATION_YN] AS [PRIMARYVALUATION_YN],
      x.[MFG_REBATE] AS [MFG_REBATE],
      x.[DLR_REBATE] AS [DLR_REBATE],
      x.[MFG_OPT_PRCNG] AS [MFG_OPT_PRCNG],
      x.[DLR_OPT_PRCNG] AS [DLR_OPT_PRCNG],
      x.[INVOICE_PRC] AS [INVOICE_PRC],
      x.[TOTL_ADJSTD_VAL_OVRD] AS [TOTL_ADJSTD_VAL_OVRD]
   FROM [clt_NetO].[WG_ASSET_VHCL_VALUATION] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
