-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [AssetAcq_pii].[Vw_CommonSettlement]
AS
   SELECT
      x.[BECUAccountNumber],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],
      CONVERT([varchar](100), HASHBYTES('SHA2_256', coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber])), 1) AS [BECUAccountNumberOriginalSafe],
      x.[LoanNumber],
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
