-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_ASSET_VHCL_VALUATION]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[VALUATION_CNTR],
      x.[S_VALUATION_SOURCE],
      x.[VALUATION_RESPONSE_ID],
      x.[ACTIVE_YN],
      x.[ELECTRONIC_YN],
      x.[MILEAGE_ADJ],
      x.[DEALER_OPTS_ADJ],
      x.[MANUFACTURER_OPTS_ADJ],
      x.[BOOK_EDITION],
      x.[REGION],
      x.[S_CLEAN_LEVEL],
      x.[S_USE_FOR_LOAN_VAL],
      x.[COLL_TRADE_BAM_VALUE],
      x.[COLL_LOAN_BAM_VALUE],
      x.[COLL_RETAIL_BAM_VALUE],
      x.[TOTAL_ADJUSTED_VALUE],
      x.[MILEAGE_YN],
      x.[ADJUSTED_VALUE],
      x.[OPTIONS_VALUE],
      x.[ENGINE_PRICING],
      x.[PRIMARYVALUATION_YN],
      x.[MFG_REBATE],
      x.[DLR_REBATE],
      x.[MFG_OPT_PRCNG],
      x.[DLR_OPT_PRCNG],
      x.[INVOICE_PRC],
      x.[TOTL_ADJSTD_VAL_OVRD]
   FROM [clt_NetO].[WG_ASSET_VHCL_VALUATION] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
