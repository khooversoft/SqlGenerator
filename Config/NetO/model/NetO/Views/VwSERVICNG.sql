-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwSERVICNG]
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
      x.[AFFCTSN],
      x.[AFFTDBID],
      x.[ACTIONSN],
      x.[ACTNDBID],
      x.[CHNGHOLD],
      x.[CHNGMORT],
      x.[ASSUMPTN],
      x.[TRANSDAT],
      x.[SELRETTR],
      x.[WILTRANS],
      x.[BATCH_ID_SER_NUM],
      x.[SERVICING_TYPE],
      x.[RETAINED_SERVICING_RATE],
      x.[RETAINED_SERVICING_MULTIPLIER],
      x.[RETAINED_SERVICING_VALUE],
      x.[HEDGE_CANDIDATE_YN],
      x.[COUPON_RATE],
      x.[GUARANTEE_FEE],
      x.[DOCS_SENT],
      x.[INDEMNF_AMT],
      x.[PC_FEDEX_NUM],
      x.[S_SERVICING_STATUS],
      A0.Descript AS [S_SERVICING_STATUS_Description],
      x.[COHORT_NUMBER]
   FROM [clt_NetO].[SERVICNG] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_SERVICING_STATUS = A0.DBSYMBOL AND A0.[TableName] = 'SERVICNG' and A0.[COLUMNNAME] = 'S_SERVICING_STATUS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
