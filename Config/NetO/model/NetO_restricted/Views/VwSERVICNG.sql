-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwSERVICNG]
AS
   SELECT
      x.[LNUM],
      x.[SELLSERV],
      x.[SERVABLE],
      x.[SERVLOAN],
      x.[NSERLOAN],
      x.[NSERLNS3],
      x.[SELLSOME],
      x.[PERTRANS],
      x.[PERCT],
      x.[DOESSELL],
      x.[PREVIOUS],
      x.[YEAR1],
      x.[PERC_YR1],
      x.[YEAR2],
      x.[PERC_YR2],
      x.[YEAR3],
      x.[PERC_YR3],
      x.[INFODOES],
      x.[FORMSTOP],
      x.[NEWSTART],
      HASHBYTES('SHA2_256', CAST(x.[AFFCTSN] AS NVARCHAR(50))) AS [AFFCTSN],
      x.[AFFTDBID],
      HASHBYTES('SHA2_256', CAST(x.[ACTIONSN] AS NVARCHAR(50))) AS [ACTIONSN],
      x.[ACTNDBID],
      x.[CHNGHOLD],
      x.[CHNGMORT],
      x.[ASSUMPTN],
      x.[TRANSDAT],
      x.[SELRETTR],
      x.[WILTRANS],
      x.[BATCH_ID_SER_NUM],
      x.[SERVICING_TYPE],
      A0.[Descript] AS [SERVICING_TYPE_X],
      x.[RETAINED_SERVICING_RATE],
      x.[RETAINED_SERVICING_MULTIPLIER],
      x.[RETAINED_SERVICING_VALUE],
      x.[HEDGE_CANDIDATE_YN],
      HASHBYTES('SHA2_256', CAST(x.[COUPON_RATE] AS NVARCHAR(50))) AS [COUPON_RATE],
      x.[GUARANTEE_FEE],
      x.[DOCS_SENT],
      x.[INDEMNF_AMT],
      x.[PC_FEDEX_NUM],
      x.[S_SERVICING_STATUS],
      A1.[Descript] AS [S_SERVICING_STATUS_X],
      x.[COHORT_NUMBER]
   FROM [clt_NetO].[SERVICNG] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[SERVICING_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'SERVICNG' and A0.[COLUMNNAME] = 'SERVICING_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_SERVICING_STATUS] = A1.[DBSYMBOL] AND A1.[TableName] = 'SERVICNG' and A1.[COLUMNNAME] = 'S_SERVICING_STATUS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
