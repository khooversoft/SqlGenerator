CREATE TABLE [clt_AssetAcq].[InvestorImport]
(
	[RowId]           uniqueidentifier not null,
	[MonthEndDate]    bigint not null,
	[MemberNumber]    [nvarchar](100) not null,
	[OldMemberNumber] [nvarchar](100) not null,
	[LoanNumber]      [nvarchar](100) not null,
	[LoanId]          [nvarchar](100) not null
)
