CREATE PROCEDURE [ing_assetacq].[usp_build_investorLoanIdMap]
    @debug bit
AS
BEGIN
    SET NOCOUNT ON;

    CREATE TABLE #work
    (
        [Id]					int identity(1,1),
        [OriginalMemberNumber]  varchar(100) not null,
        [OriginalLoanId]        varchar(100) not null,
        [MemberNumber]          varchar(100) not null,
        [LoanId]                varchar(100) not null,
        [Parent]				varchar(500)
    );

    CREATE TABLE #stack
    (
        [Id]					int,
        [OriginalMemberNumber]  varchar(100) not null,
        [OriginalLoanId]        varchar(50) not null,
        [MemberNumber]          varchar(50) not null,
        [LoanId]                varchar(50) not null,
        [Parent]				varchar(500)
    );

    INSERT INTO #work ([OriginalMemberNumber], [OriginalLoanId], [MemberNumber], [LoanId], [Parent])
    SELECT	DISTINCT
        x.[OriginalMemberNumber]
        ,x.[OriginalLoanId]
        ,x.[MemberNumber]
        ,x.[LoanId]
        ,x.[OriginalLoanId]
    FROM	[ing_assetacq].[Vw_InvestorImport] x

    --select 'work' as source, * from @work

    INSERT INTO #stack ([Id], [OriginalMemberNumber], [OriginalLoanId], [MemberNumber], [LoanId], [Parent])
    SELECT	DISTINCT
            x.[Id]
            ,x.[OriginalMemberNumber]
            ,x.[OriginalLoanId]
            ,x.[MemberNumber]
            ,x.[LoanId]
            ,x.[Parent]
    FROM	#work x
    WHERE	NOT EXISTS (SELECT * FROM #work i WHERE i.[LoanId] = x.[OriginalLoanId])

    DELETE	#work
    FROM	#work w
            INNER JOIN #stack s ON w.[Id] = s.[Id];

    --SELECT 'stack' as source, * from @stack;
    --SELECT 'work' as source, * from @work;

    DECLARE @count int = 0;

    WHILE (@count < 100 AND EXISTS (SELECT TOP 1 1 FROM #work))
    BEGIN
        INSERT INTO #stack ([Id], [OriginalMemberNumber], [OriginalLoanId], [MemberNumber], [LoanId], [Parent])
        SELECT	x.[Id]
                ,x.[OriginalMemberNumber]
                ,x.[OriginalLoanId]
                ,x.[MemberNumber]
                ,x.[LoanId]
                ,s.[Parent] + '/' + x.[Parent]
        FROM	#work x
                inner join #stack s on s.[LoanId] = x.[OriginalLoanId]

        DELETE	#work
        FROM	#work w
                INNER JOIN #stack s ON w.[Id] = s.[Id];

        --SELECT 'inner-stack' as source, * from @stack;
        --SELECT 'inner-work' as source, * from @work;

        SET @count +=1;
    END

    IF @debug = 1
    BEGIN
        SELECT	x.[OriginalMemberNumber]
                ,x.[OriginalLoanId]
                ,x.[MemberNumber]
                ,x.[LoanId]
                ,x.[Parent]
                ,ISNULL(NULLIF(SUBSTRING(x.[Parent], 0, CHARINDEX('/', x.[Parent])), ''), x.[Parent]) AS [Root]
        FROM	#stack x
    END

    TRUNCATE TABLE [clt_AssetAcq].[InvestorLoanIdMap];

    INSERT INTO [clt_AssetAcq].[InvestorLoanIdMap]
    (
        [OriginalMemberNumber]
        ,[OriginalLoanId]
        ,[MemberNumber]
        ,[LoanId]
    )
    SELECT	x.[OriginalMemberNumber]
            ,ISNULL(NULLIF(SUBSTRING(x.[Parent], 0, CHARINDEX('/', x.[Parent])), ''), x.[Parent]) AS [OriginalLoanId]
            ,x.[MemberNumber]
            ,x.[LoanId]
    FROM	#stack x;
END
