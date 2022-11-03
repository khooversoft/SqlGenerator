-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_RPT_INV_LOCK_SNAPSHOT]
AS
   SELECT
      x.[LNUM],
      x.[SNAPSHOTID],
      x.[SNAPSHOT_DATE],
      x.[DELEGATED_ENDORSEMENT_YN],
      x.[PRODUCT],
      x.[RATECODE],
      x.[INTEREST_RATE],
      x.[AMORTIZATION_TYPE],
      x.[INVST_LOCK_PERIOD],
      x.[BASE_MARKET_PRICE],
      x.[TTL_MKT_PRICE_ADJUSTMENTS],
      x.[DELIVERY_TERMS],
      x.[PROPERTY_TYPE],
      x.[DOCUMENTATION_LEVEL],
      x.[OCCUPANCY_TYPE],
      x.[PURP_OF_REFINANCE],
      x.[LOAN_PURPOSE],
      x.[ORIGINAL_LOAN_AMOUNT],
      x.[PROPERTY_LOAN_TO_VALUE],
      x.[COMBINED_LOAN_TO_VALUE],
      x.[ALTERNATE_CREDIT_SCORE],
      x.[PROPERTY_STATE],
      x.[TOTAL_RATIO]
   FROM [clt_NetO].[WG_RPT_INV_LOCK_SNAPSHOT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
