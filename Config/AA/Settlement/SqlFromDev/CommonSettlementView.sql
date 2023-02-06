/****** Object:  View [AssetAcq].[Vw_CommonSettlement]    Script Date: 2/3/2023 10:38:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [AssetAcq].[Vw_CommonSettlement]
AS SELECT
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
GO


