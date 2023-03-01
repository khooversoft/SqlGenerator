CREATE VIEW [AssetAcq_pii].[Vw_CommonSettlement]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[BECUAccountNumberOriginal],
      x.[BECUAccountNumberOriginalSafe],
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
      x.[Channel],
      x.[MonthEndBalanceAmountFactor]
   FROM [ing_assetacq].[Vw_SettlementBase] x
;
