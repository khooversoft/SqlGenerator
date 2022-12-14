-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwCONSREFI]
AS
   SELECT
      x.[LNUM],
      x.[ORIGCOST],
      x.[AMTEXLN],
      x.[PRESVAL],
      x.[CSTIMPRO],
      x.[IMPDESC],
      x.[S_REFPRP],
      A0.[Descript] AS [S_REFPRP_X],
      x.[IMPMADE],
      x.[LOTACQUR],
      x.[REFIIMP],
      x.[CASHAMT],
      x.[S_GSE_REFINANCE_PURPOSE],
      A1.[Descript] AS [S_GSE_REFINANCE_PURPOSE_X],
      x.[S_CONST_PERM_CLOSING],
      A2.[Descript] AS [S_CONST_PERM_CLOSING_X],
      x.[INTERNREFI],
      HASHBYTES('SHA2_256', x.[ORIG_INVESTOR_LOAN_NBR]) AS [ORIG_INVESTOR_LOAN_NBR],
      x.[S_ORIG_INVESTOR],
      A3.[Descript] AS [S_ORIG_INVESTOR_X],
      HASHBYTES('SHA2_256', x.[OTHER_INVESTOR_DESC]) AS [OTHER_INVESTOR_DESC],
      x.[OTHERGSEREFIPURPTYPEDESC],
      x.[REPLACE_EXIST_CONSTR_LOAN],
      HASHBYTES('SHA2_256', CAST(x.[FIR_MAX_MONTHLY_AMT] AS NVARCHAR(50))) AS [FIR_MAX_MONTHLY_AMT],
      x.[PREVIOUS_REFI_MONTHS],
      x.[CO_REFI_PURCH_CONST],
      x.[S_CONST_PERM_FEATURE],
      A4.[Descript] AS [S_CONST_PERM_FEATURE_X],
      x.[S_FNM_REFI_PGM],
      A5.[Descript] AS [S_FNM_REFI_PGM_X],
      x.[S_FRE_REFI_PGM],
      A6.[Descript] AS [S_FRE_REFI_PGM_X],
      x.[LIMIT_DESC],
      HASHBYTES('SHA2_256', x.[REFI_LOAN_ACCT_NBR]) AS [REFI_LOAN_ACCT_NBR]
   FROM [clt_NetO].[CONSREFI] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_REFPRP] = A0.[DBSYMBOL] AND A0.[TableName] = 'CONSREFI' and A0.[COLUMNNAME] = 'S_REFPRP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_GSE_REFINANCE_PURPOSE] = A1.[DBSYMBOL] AND A1.[TableName] = 'CONSREFI' and A1.[COLUMNNAME] = 'S_GSE_REFINANCE_PURPOSE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_CONST_PERM_CLOSING] = A2.[DBSYMBOL] AND A2.[TableName] = 'CONSREFI' and A2.[COLUMNNAME] = 'S_CONST_PERM_CLOSING'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_ORIG_INVESTOR] = A3.[DBSYMBOL] AND A3.[TableName] = 'CONSREFI' and A3.[COLUMNNAME] = 'S_ORIG_INVESTOR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_CONST_PERM_FEATURE] = A4.[DBSYMBOL] AND A4.[TableName] = 'CONSREFI' and A4.[COLUMNNAME] = 'S_CONST_PERM_FEATURE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_FNM_REFI_PGM] = A5.[DBSYMBOL] AND A5.[TableName] = 'CONSREFI' and A5.[COLUMNNAME] = 'S_FNM_REFI_PGM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_FRE_REFI_PGM] = A6.[DBSYMBOL] AND A6.[TableName] = 'CONSREFI' and A6.[COLUMNNAME] = 'S_FRE_REFI_PGM'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
