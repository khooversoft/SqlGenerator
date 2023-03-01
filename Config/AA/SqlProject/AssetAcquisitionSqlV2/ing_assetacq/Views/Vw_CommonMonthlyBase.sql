CREATE VIEW [ing_assetacq].[Vw_CommonMonthlyBase]
AS
   SELECT
      x.*,
      CONVERT([varchar](100), HASHBYTES('SHA2_256', x.[BECUAccountNumberOriginal]), 1) AS [BECUAccountNumberOriginalSafe],
      CONVERT([varchar](100), HASHBYTES('SHA2_256', x.[BECUCurrentPartyID]), 1) AS [BECUCurrentPartyIDSafe],
      CONVERT([varchar](100), HASHBYTES('SHA2_256', x.[BECUOriginalPartyID]), 1) AS [BECUOriginalPartyIDSafe],
      A0.[BecuCode] AS [ProductTypeBecuCode],
      A1.[BecuCode] AS [ProductDescriptionBecuCode],
      A2.[BecuCode] AS [LoanPurposeDescBecuCode],
      A3.[BecuCode] AS [DocumentationTypeBecuCode],
      A4.[BecuCode] AS [InterestRateTypeBecuCode],
      A5.[BecuCode] AS [OccupancyCodeBecuCode],
      A6.[BecuCode] AS [AccountStatusCodeBecuCode],
      A7.[BecuCode] AS [CommonCollateralTypeDescriptionBecuCode],
      A8.[BecuCode] AS [CurrentCreditGradeBecuCode],
      A9.[BecuCode] AS [OriginalCreditGradeBecuCode],
      A10.[BecuCode] AS [CommonChannelBecuCode],

      A11.[BecuCode] AS [ApprovalMethodNameBecuCode],
      A12.[BecuCode] AS [BankruptcyTypeCodeBecuCode],
      A13.[BecuCode] AS [InterestAccrualBasisBecuCode],
      A14.[BecuCode] AS [ModificationTypeBecuCode],
      A15.[BecuCode] AS [PropertyTypeDescriptionBecuCode],
      A16.[BecuCode] AS [RateIndexDescriptionBecuCode],
      A17.[BecuCode] AS [AssetClassBecuCode],
      A18.[BecuCode] AS [PaymentFrequencyBecuCode]
    FROM  (
      SELECT  i.*,
        coalesce([idMap].[OriginalMemberNumber], i.[CurrentPartyID]) AS [OriginalPartyId],
        coalesce([idMap].[OriginalLoanId], i.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],

        CASE WHEN i.[CurrentPartyID] IS NOT NULL
          THEN CONCAT(i.[VendorId], '-', i.[CurrentPartyID])
          ELSE NULL
          END  [BECUCurrentPartyID],

        CASE WHEN coalesce([idMap].[OriginalMemberNumber], i.[CurrentPartyID]) IS NOT NULL
          THEN CONCAT(i.[VendorId], '-', coalesce([idMap].[OriginalMemberNumber], i.[CurrentPartyID]))
          ELSE NULL
          END AS [BECUOriginalPartyID],

        coalesce(i.[DaysDelinquentCount], 0) AS [DaysDelinquentCountValue],
        coalesce(i.[CollateralTypeDescription], i.[PropertyTypeDescription]) AS [CommonCollateralTypeDescription],

        coalesce(i.[Channel], [settlement].[Channel]) AS [CommonChannel],
        coalesce(i.[ParticipationRatio], [settlement].[ParticipationRatio]) AS [CommonParticipationRatio],

        [settlement].[DealId],
        [settlement].[MonthEndBalanceAmountFactor],

        i.[MonthEndBalanceAmount] * [settlement].[MonthEndBalanceAmountFactor] AS [MonthEndBalanceAmountBECU]

      FROM [clt_AssetAcq].[CommonMonthly] i
        LEFT JOIN [clt_AssetAcq].[InvestorLoanIdMap] [idMap] ON i.[BECUAccountNumber] = [idMap].[LoanId]
        INNER JOIN [ing_assetacq].[Vw_SettlementBase] [settlement] ON coalesce([idMap].[OriginalLoanId], i.[BECUAccountNumber]) = [settlement].[BECUAccountNumberOriginal]
      WHERE
          i.[ASAP_DeleteDateTime] IS NULL
    ) x
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A0 on A0.[BecuAttributeName] = 'ProductType' AND A0.[VendorId] = x.[VendorId] AND A0.[VendorCode] = x.[ProductType]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A1 on A1.[BecuAttributeName] = 'ProductDescription' AND A1.[VendorId] = x.[VendorId] AND A1.[VendorCode] = x.[ProductDescription]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A2 on A2.[BecuAttributeName] = 'LoanPurposeDesc' AND A2.[VendorId] = x.[VendorId] AND A2.[VendorCode] = x.[LoanPurposeDesc]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A3 on A3.[BecuAttributeName] = 'DocumentationType' AND A3.[VendorId] = x.[VendorId] AND A3.[VendorCode] = x.[DocumentationType]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A4 on A4.[BecuAttributeName] = 'InterestRateType' AND A4.[VendorId] = x.[VendorId] AND A4.[VendorCode] = x.[InterestRateType]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A5 on A5.[BecuAttributeName] = 'OccupancyCode' AND A5.[VendorId] = x.[VendorId] AND A5.[VendorCode] = x.[OccupancyCode]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A6 on A6.[BecuAttributeName] = 'AccountStatusCode' AND A6.[VendorId] = x.[VendorId] AND A6.[VendorCode] = x.[AccountStatusCode]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A7 on A7.[BecuAttributeName] = 'CollateralTypeDescription' AND A7.[VendorId] = x.[VendorId] AND A7.[VendorCode] = x.[CommonCollateralTypeDescription]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A8 on A8.[BecuAttributeName] = 'CurrentCreditGrade' AND A8.[VendorId] = x.[VendorId] AND A8.[VendorCode] = x.[CurrentCreditGrade]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A9 on A9.[BecuAttributeName] = 'OriginalCreditGrade' AND A9.[VendorId] = x.[VendorId] AND A9.[VendorCode] = x.[OriginalCreditGrade]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A10 on A10.[BecuAttributeName] = 'Channel' AND A10.[VendorId] = x.[VendorId] AND A10.[VendorCode] = x.[CommonChannel]

      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A11 on A11.[BecuAttributeName] = 'ApprovalMethodName' AND A11.[VendorId] = x.[VendorId] AND A11.[VendorCode] = x.[ApprovalMethodName]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A12 on A12.[BecuAttributeName] = 'BankruptcyTypeCode' AND A12.[VendorId] = x.[VendorId] AND A12.[VendorCode] = x.[BankruptcyTypeCode]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A13 on A13.[BecuAttributeName] = 'InterestAccrualBasis' AND A13.[VendorId] = x.[VendorId] AND A13.[VendorCode] = x.[InterestAccrualBasis]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A14 on A14.[BecuAttributeName] = 'ModificationType' AND A14.[VendorId] = x.[VendorId] AND A14.[VendorCode] = x.[ModificationType]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A15 on A15.[BecuAttributeName] = 'PropertyType' AND A15.[VendorId] = x.[VendorId] AND A15.[VendorCode] = x.[PropertyTypeDescription]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A16 on A16.[BecuAttributeName] = 'RateIndexDescription' AND A16.[VendorId] = x.[VendorId] AND A16.[VendorCode] = x.[RateIndexDescription]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A17 on A17.[BecuAttributeName] = 'AssetClass' AND A17.[VendorId] = x.[VendorId] AND A17.[VendorCode] = x.[AssetClass]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A18 on A18.[BecuAttributeName] = 'PaymentFrequency' AND A18.[VendorId] = x.[VendorId] AND A18.[VendorCode] = x.[PaymentFrequency]
;
