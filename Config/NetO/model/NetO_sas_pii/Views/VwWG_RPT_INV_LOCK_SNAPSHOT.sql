-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_RPT_INV_LOCK_SNAPSHOT]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[SNAPSHOTID] AS [SNAPSHOTID],
      x.[SNAPSHOT_DATE] AS [SNAPSHOT_DATE],
      x.[DELEGATED_ENDORSEMENT_YN] AS [DELEGATED_ENDORSEMENT_YN],
      x.[PRODUCT] AS [PRODUCT],
      x.[RATECODE] AS [RATECODE],
      x.[INTEREST_RATE] AS [INTEREST_RATE],
      x.[AMORTIZATION_TYPE] AS [AMORTIZATION_TYPE],
      x.[INVST_LOCK_PERIOD] AS [INVST_LOCK_PERIOD],
      x.[BASE_MARKET_PRICE] AS [BASE_MARKET_PRICE],
      x.[TTL_MKT_PRICE_ADJUSTMENTS] AS [TTL_MKT_PRICE_ADJUSTMENTS],
      x.[DELIVERY_TERMS] AS [DELIVERY_TERMS],
      x.[PROPERTY_TYPE] AS [PROPERTY_TYPE],
      x.[DOCUMENTATION_LEVEL] AS [DOCUMENTATION_LEVEL],
      x.[OCCUPANCY_TYPE] AS [OCCUPANCY_TYPE],
      x.[PURP_OF_REFINANCE] AS [PURP_OF_REFINANCE],
      x.[LOAN_PURPOSE] AS [LOAN_PURPOSE],
      x.[ORIGINAL_LOAN_AMOUNT] AS [ORIGINAL_LOAN_AMOUNT],
      x.[PROPERTY_LOAN_TO_VALUE] AS [PROPERTY_LOAN_TO_VALUE],
      x.[COMBINED_LOAN_TO_VALUE] AS [COMBINED_LOAN_TO_VALUE],
      x.[ALTERNATE_CREDIT_SCORE] AS [ALTERNATE_CREDIT_SCORE],
      x.[PROPERTY_STATE] AS [PROPERTY_STATE],
      x.[TOTAL_RATIO] AS [TOTAL_RATIO]
   FROM [clt_NetO].[WG_RPT_INV_LOCK_SNAPSHOT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
