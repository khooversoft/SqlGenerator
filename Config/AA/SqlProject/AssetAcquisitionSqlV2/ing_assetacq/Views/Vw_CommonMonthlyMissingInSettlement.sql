CREATE VIEW [ing_assetacq].[Vw_CommonMonthlyMissingInSettlement]
AS
  select	distinct
      [BECUAccountNumberOriginal]
  from	[ing_assetacq].[Vw_SettlementBase]

  except

  select	distinct
      x.[BECUAccountNumberOriginal]
  FROM	(
        SELECT
        coalesce([idMap].[OriginalLoanId], i.[BECUAccountNumber]) AS [BECUAccountNumberOriginal]

        FROM [clt_AssetAcq].[CommonMonthly] i
          LEFT JOIN [clt_AssetAcq].[InvestorLoanIdMap] [idMap] ON i.[BECUAccountNumber] = [idMap].[LoanId]
        WHERE i.[ASAP_DeleteDateTime] IS NULL
      ) x

