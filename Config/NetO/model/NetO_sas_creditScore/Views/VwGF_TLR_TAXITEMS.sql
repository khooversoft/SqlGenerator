-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwGF_TLR_TAXITEMS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      x.[HUDLINE] AS [HUDLINE],
      x.[S_TAXTYPE] AS [S_TAXTYPE],
      A0.[Descript] AS [S_TAXTYPE_X],
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
      HASHBYTES('SHA2_256', CAST(x.[PMT_AMT_1] AS NVARCHAR(50))) AS [PMT_AMT_1],
      HASHBYTES('SHA2_256', CAST(x.[PMT_AMT_2] AS NVARCHAR(50))) AS [PMT_AMT_2],
      HASHBYTES('SHA2_256', CAST(x.[PMT_AMT_3] AS NVARCHAR(50))) AS [PMT_AMT_3],
      HASHBYTES('SHA2_256', CAST(x.[PMT_AMT_4] AS NVARCHAR(50))) AS [PMT_AMT_4],
      x.[DISBURSID] AS [DISBURSID],
      HASHBYTES('SHA2_256', x.[AUTH_NAME]) AS [AUTH_NAME],
      HASHBYTES('SHA2_256', x.[TAX_DELINQUENT]) AS [TAX_DELINQUENT],
      x.[PAID_THRU_DATE] AS [PAID_THRU_DATE],
      x.[PARCEL_ID] AS [PARCEL_ID],
      x.[CUSHION] AS [CUSHION],
      x.[SFREQUENCY] AS [SFREQUENCY],
      A1.[Descript] AS [SFREQUENCY_X],
      x.[PROJASESSEDVAL] AS [PROJASESSEDVAL],
      x.[RATEPERTHOUSAND] AS [RATEPERTHOUSAND],
      x.[COLFIRSTYR] AS [COLFIRSTYR],
      x.[S_ESCTAX] AS [S_ESCTAX],
      A2.[Descript] AS [S_ESCTAX_X],
      x.[ISMERGEDINT] AS [ISMERGEDINT],
      HASHBYTES('SHA2_256', x.[TAX_TYPE_DESC]) AS [TAX_TYPE_DESC],
      x.[UPFRONT_TAX_AMOUNT] AS [UPFRONT_TAX_AMOUNT]
   FROM [clt_NetO].[GF_TLR_TAXITEMS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_TAXTYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_TAXITEMS' and A0.[COLUMNNAME] = 'S_TAXTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[SFREQUENCY] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_TAXITEMS' and A1.[COLUMNNAME] = 'SFREQUENCY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_ESCTAX] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLR_TAXITEMS' and A2.[COLUMNNAME] = 'S_ESCTAX'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
