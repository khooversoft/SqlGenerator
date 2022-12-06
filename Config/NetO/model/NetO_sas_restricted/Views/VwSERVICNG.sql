-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwSERVICNG]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[SELLSERV] AS [SELLSERV],
      x.[SERVABLE] AS [SERVABLE],
      x.[SERVLOAN] AS [SERVLOAN],
      x.[NSERLOAN] AS [NSERLOAN],
      x.[NSERLNS3] AS [NSERLNS3],
      x.[SELLSOME] AS [SELLSOME],
      x.[PERTRANS] AS [PERTRANS],
      x.[PERCT] AS [PERCT],
      x.[DOESSELL] AS [DOESSELL],
      x.[PREVIOUS] AS [PREVIOUS],
      x.[YEAR1] AS [YEAR1],
      x.[PERC_YR1] AS [PERC_YR1],
      x.[YEAR2] AS [YEAR2],
      x.[PERC_YR2] AS [PERC_YR2],
      x.[YEAR3] AS [YEAR3],
      x.[PERC_YR3] AS [PERC_YR3],
      x.[INFODOES] AS [INFODOES],
      x.[FORMSTOP] AS [FORMSTOP],
      x.[NEWSTART] AS [NEWSTART],
      x.[AFFCTSN] AS [AFFCTSN],
      x.[AFFTDBID] AS [AFFTDBID],
      x.[ACTIONSN] AS [ACTIONSN],
      x.[ACTNDBID] AS [ACTNDBID],
      x.[CHNGHOLD] AS [CHNGHOLD],
      x.[CHNGMORT] AS [CHNGMORT],
      x.[ASSUMPTN] AS [ASSUMPTN],
      x.[TRANSDAT] AS [TRANSDAT],
      x.[SELRETTR] AS [SELRETTR],
      x.[WILTRANS] AS [WILTRANS],
      x.[BATCH_ID_SER_NUM] AS [BATCH_ID_SER_NUM],
      x.[SERVICING_TYPE] AS [SERVICING_TYPE],
      x.[RETAINED_SERVICING_RATE] AS [RETAINED_SERVICING_RATE],
      x.[RETAINED_SERVICING_MULTIPLIER] AS [RETAINED_SERVICING_MULTIPLIER],
      x.[RETAINED_SERVICING_VALUE] AS [RETAINED_SERVICING_VALUE],
      x.[HEDGE_CANDIDATE_YN] AS [HEDGE_CANDIDATE_YN],
      x.[COUPON_RATE] AS [COUPON_RATE],
      x.[GUARANTEE_FEE] AS [GUARANTEE_FEE],
      x.[DOCS_SENT] AS [DOCS_SENT],
      x.[INDEMNF_AMT] AS [INDEMNF_AMT],
      x.[PC_FEDEX_NUM] AS [PC_FEDEX_NUM],
      x.[S_SERVICING_STATUS] AS [S_SERVICING_STATUS],
      A0.Descript AS [SERVICING_STATUS],
      x.[COHORT_NUMBER] AS [COHORT_NUMBER]
   FROM [clt_NetO].[SERVICNG] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_SERVICING_STATUS = A0.[DBSYMBOL] AND A0.[TableName] = 'SERVICNG' and A0.[COLUMNNAME] = 'S_SERVICING_STATUS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
