-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [AssetAcq_restricted].[Vw_CommonSettlement]
AS
   SELECT
      x.[BECUAccountNumber],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],
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
   FROM [clt_AssetAcq].[CommonSettlement] x
      LEFT JOIN [clt_AssetAcq].[InvestorLoanIdMap] [idMap] ON x.[BECUAccountNumber] = [idMap].[LoanId]
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
