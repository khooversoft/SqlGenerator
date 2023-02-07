CREATE VIEW [ing_assetacq].[Vw_InvestorImport]
AS
  SELECT	x.[OldMemberNumber] AS [OriginalMemberNumber]
          ,SUBSTRING(x.[LoanId], 0, CHARINDEX('-', x.[LoanId])) +
            '-' +
            x.[OldMemberNumber] + x.[LoanNumber]
            AS [OriginalLoanId]
          ,x.[MemberNumber] as [MemberNumber]
          ,x.[LoanId]
  FROM	[clt_AssetAcq].[InvestorImport] x
;