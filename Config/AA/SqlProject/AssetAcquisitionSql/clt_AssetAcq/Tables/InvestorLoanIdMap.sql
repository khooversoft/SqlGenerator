CREATE TABLE [clt_AssetAcq].[InvestorLoanIdMap]
(
	[OriginalMemberNumber]  bigint not null,
	[OriginalLoanId]        varchar(50) not null,
	[MemberNumber]          bigint not null,
	[LoanId]                varchar(50) not null
)
GO

CREATE INDEX InvestorLoanIdMap_ix1 ON [clt_AssetAcq].[InvestorLoanIdMap] ([LoanId]);
GO
