CREATE TABLE [clt_AssetAcq].[InvestorLoanIdMap]
(
	[OriginalMemberNumber]  [nvarchar](100) not null,
	[OriginalLoanId]        [nvarchar](100) not null,
	[MemberNumber]          [nvarchar](100) not null,
	[LoanId]                [nvarchar](100) not null
)
GO

CREATE INDEX InvestorLoanIdMap_ix1 ON [clt_AssetAcq].[InvestorLoanIdMap] ([LoanId]);
GO
