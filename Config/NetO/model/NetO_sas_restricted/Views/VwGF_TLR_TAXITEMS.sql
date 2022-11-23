-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLR_TAXITEMS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[HUDLINE] AS [HUDLINE],
      x.[S_TAXTYPE] AS [S_TAXTYPE],
      A0.Descript AS [S_TAXTYPE_Description],
      x.[ANN_AMT] AS [ANN_AMT],
      x.[FIRST_DUE] AS [FIRST_DUE],
      x.[ESCROW] AS [ESCROW],
      x.[INSTYPE] AS [INSTYPE],
      x.[TRETS_ID] AS [TRETS_ID],
      x.[MONTH_AG] AS [MONTH_AG],
      x.[ANNUAL_AG] AS [ANNUAL_AG],
      x.[MONTH_AMT] AS [MONTH_AMT],
      x.[MONTH_PD_1] AS [MONTH_PD_1],
      x.[MONTH_PD_2] AS [MONTH_PD_2],
      x.[MONTH_PD_3] AS [MONTH_PD_3],
      x.[MONTH_PD_4] AS [MONTH_PD_4],
      x.[PMT_AMT_1] AS [PMT_AMT_1],
      x.[PMT_AMT_2] AS [PMT_AMT_2],
      x.[PMT_AMT_3] AS [PMT_AMT_3],
      x.[PMT_AMT_4] AS [PMT_AMT_4],
      x.[DISBURSID] AS [DISBURSID],
      x.[AUTH_NAME] AS [AUTH_NAME],
      x.[TAX_DELINQUENT] AS [TAX_DELINQUENT],
      x.[PAID_THRU_DATE] AS [PAID_THRU_DATE],
      x.[PARCEL_ID] AS [PARCEL_ID],
      x.[CUSHION] AS [CUSHION],
      x.[SFREQUENCY] AS [SFREQUENCY],
      x.[PROJASESSEDVAL] AS [PROJASESSEDVAL],
      x.[RATEPERTHOUSAND] AS [RATEPERTHOUSAND],
      x.[COLFIRSTYR] AS [COLFIRSTYR],
      x.[S_ESCTAX] AS [S_ESCTAX],
      A1.Descript AS [S_ESCTAX_Description],
      x.[ISMERGEDINT] AS [ISMERGEDINT],
      x.[TAX_TYPE_DESC] AS [TAX_TYPE_DESC],
      x.[UPFRONT_TAX_AMOUNT] AS [UPFRONT_TAX_AMOUNT]
   FROM [clt_NetO].[GF_TLR_TAXITEMS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_TAXTYPE = A0.DBSYMBOL AND A0.[TableName] = 'GF_TLR_TAXITEMS' and A0.[COLUMNNAME] = 'S_TAXTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_ESCTAX = A1.DBSYMBOL AND A1.[TableName] = 'GF_TLR_TAXITEMS' and A1.[COLUMNNAME] = 'S_ESCTAX'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
