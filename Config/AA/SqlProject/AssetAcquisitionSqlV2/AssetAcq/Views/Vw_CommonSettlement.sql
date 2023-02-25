-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [AssetAcq].[Vw_CommonSettlement]
AS
   SELECT
      CONVERT([varchar](100), HASHBYTES('SHA2_256', x.[BECUAccountNumber]), 1) AS [BECUAccountNumber],
      CONVERT([varchar](100), HASHBYTES('SHA2_256', coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber])), 1) AS [BECUAccountNumberOriginal],
      CONVERT([varchar](100), HASHBYTES('SHA2_256', coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber])), 1) AS [BECUAccountNumberOriginalSafe],
      CONVERT([varchar](100), HASHBYTES('SHA2_256', x.[LoanNumber]), 1) AS [LoanNumber],
      x.[ProductType],
      x.[ServiceFee],
      x.[Balance],
      x.[ParticipationBalance90],
      x.[DateInterestPaidTo],
      x.[OriginalLoanToValueRatio],
      x.[NetInt],
      x.[Price],
      x.[PremiumDiscount],
      x.[FundsDue],
      x.[VendorId],
      x.[DealId],
      x.[HeldForSaleFlag],
      x.[ParticipationRatio],
      x.[LoanSource],
      x.[Channel]
   FROM [ing_assetacq].[Vw_SettlementBase] x
;
