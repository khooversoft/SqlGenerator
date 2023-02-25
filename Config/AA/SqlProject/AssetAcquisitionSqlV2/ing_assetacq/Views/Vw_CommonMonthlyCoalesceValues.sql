-- CREATE VIEW [ing_assetacq].[Vw_CommonMonthlyCoalesceValues]
-- AS
--   SELECT
--       x.[BECUAccountNumber],
--       x.[MonthEndDate],
      
--       coalesce([idMap].[OriginalMemberNumber], x.[CurrentPartyID]) AS [OriginalPartyId],
--       coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],

--       CASE WHEN x.[CurrentPartyID] IS NOT NULL
--         THEN CONCAT(x.[VendorId], '-', x.[CurrentPartyID])
--         ELSE NULL
--         END  [BECUCurrentPartyID],

--       CASE WHEN coalesce([idMap].[OriginalMemberNumber], x.[CurrentPartyID]) IS NOT NULL
--         THEN CONCAT(x.[VendorId], '-', coalesce([idMap].[OriginalMemberNumber], x.[CurrentPartyID]))
--         ELSE NULL
--         END AS [BECUOriginalPartyID],

--       coalesce(x.[DaysDelinquentCount], 0) AS [DaysDelinquentCount],
--       coalesce(x.[CollateralTypeDescription], x.[PropertyTypeDescription]) AS [CommonCollateralTypeDescription],

--       coalesce(x.[Channel], [settlement].[Channel]) AS [CommonChannel],
--       coalesce(x.[ParticipationRatio], [settlement].[ParticipationRatio]) AS [CommonParticipationRatio],
--       [settlement].[DealId]

--   FROM [clt_AssetAcq].[CommonMonthly] x
--       LEFT JOIN [clt_AssetAcq].[InvestorLoanIdMap] [idMap] ON x.[BECUAccountNumber] = [idMap].[LoanId]
--       INNER JOIN [ing_assetacq].[Vw_SettlementBase] [settlement] ON coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) = [settlement].[BECUAccountNumberOriginal]
-- ;
