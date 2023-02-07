-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [AssetAcq_pii].[Vw_CommonSettlement]
AS
   SELECT
      x.[BECUAccountNumber],
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
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL;
