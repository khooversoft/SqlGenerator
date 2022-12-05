-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [AssetAcq].[Vw_CommonSettlement]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[loan_number],
      x.[product_type],
      x.[service_fee],
      x.[balance],
      x.[participation_balance_90],
      x.[date_interest_paid_to],
      x.[original_loan_to_value_ratio],
      x.[net_int],
      x.[price],
      x.[premium_discount],
      x.[funds_due],
      x.[PoolId],
      x.[HeldForSaleFlag],
      x.[ParticpationRatio],
      x.[LoanSource]
   FROM [clt_AssetAcq].[CommonSettlement] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
