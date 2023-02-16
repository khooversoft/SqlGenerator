CREATE VIEW [ing_assetacq].[Vw_CommonMonthlyCoalesceValues]
AS
  SELECT
      x.[BECUAccountNumber],
      
      coalesce([idMap].[OriginalMemberNumber], x.[CurrentPartyID]) AS [OriginalPartyId],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],

      CASE WHEN x.[CurrentPartyID] IS NOT NULL
        THEN CONCAT(x.[VendorId], '-', x.[CurrentPartyID])
        ELSE NULL
        END  [BECUCurrentPartyID],

      CASE WHEN coalesce([idMap].[OriginalMemberNumber], x.[CurrentPartyID]) IS NOT NULL
        THEN CONCAT(x.[VendorId], '-', coalesce([idMap].[OriginalMemberNumber], x.[CurrentPartyID]))
        ELSE NULL
        END AS [BECUOriginalPartyID],

      coalesce(x.[DaysDelinquentCount], 0) AS [DaysDelinquentCount],
      coalesce(x.[CollateralTypeDescription], x.[PropertyTypeDescription]) AS [CommonCollateralTypeDescription]


  FROM [clt_AssetAcq].[CommonMonthly] x
      LEFT JOIN [clt_AssetAcq].[InvestorLoanIdMap] [idMap] ON x.[BECUAccountNumber] = [idMap].[LoanId]

