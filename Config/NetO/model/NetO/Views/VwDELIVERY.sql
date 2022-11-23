-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwDELIVERY]
AS
   SELECT
      x.[LNUM],
      x.[COMNUM],
      x.[CONTRACT],
      x.[COMTYPE],
      x.[SELLNUM],
      x.[NUMBED1],
      x.[NUMBED2],
      x.[NUMBED3],
      x.[NUMBED4],
      x.[RENTS1],
      x.[RENTS2],
      x.[RENTS3],
      x.[RENTS4],
      x.[S_SPF1],
      A0.Descript AS [S_SPF1_Description],
      x.[S_SPF2],
      A1.Descript AS [S_SPF2_Description],
      x.[S_SPF3],
      A2.Descript AS [S_SPF3_Description],
      x.[S_SPF4],
      A3.Descript AS [S_SPF4_Description],
      x.[S_SPF5],
      A4.Descript AS [S_SPF5_Description],
      x.[S_SPF6],
      A5.Descript AS [S_SPF6_Description],
      x.[ASSUM],
      x.[RDF],
      x.[INTPD],
      x.[MATDATE],
      x.[S_SFSRC1],
      A6.Descript AS [S_SFSRC1_Description],
      x.[S_SFSRC2],
      A7.Descript AS [S_SFSRC2_Description],
      x.[SFAMT1],
      x.[SFAMT2],
      x.[S_BECA1],
      A8.Descript AS [S_BECA1_Description],
      x.[S_BECA2],
      A9.Descript AS [S_BECA2_Description],
      x.[S_BECF1],
      A10.Descript AS [S_BECF1_Description],
      x.[S_BECF2],
      A11.Descript AS [S_BECF2_Description],
      x.[S_DPSRC1],
      A12.Descript AS [S_DPSRC1_Description],
      x.[S_DPSRC2],
      A13.Descript AS [S_DPSRC2_Description],
      x.[S_DPSRC3],
      A14.Descript AS [S_DPSRC3_Description],
      x.[S_DPSRC4],
      A15.Descript AS [S_DPSRC4_Description],
      x.[DPAMT1],
      x.[DPAMT2],
      x.[DPAMT3],
      x.[DPAMT4],
      x.[S_CCSRC1],
      A16.Descript AS [S_CCSRC1_Description],
      x.[S_CCSRC2],
      A17.Descript AS [S_CCSRC2_Description],
      x.[S_CCSRC3],
      A18.Descript AS [S_CCSRC3_Description],
      x.[S_CCSRC4],
      A19.Descript AS [S_CCSRC4_Description],
      x.[CCAMT1],
      x.[CCAMT2],
      x.[CCAMT3],
      x.[CCAMT4],
      x.[MICOV],
      x.[UPB],
      x.[S_LFC],
      A20.Descript AS [S_LFC_Description],
      x.[INTEND],
      x.[LPID],
      x.[INTONLY],
      x.[LOOKBACK],
      x.[NETNEGAM],
      x.[S_RFC],
      A21.Descript AS [S_RFC_Description],
      x.[UWNAME],
      x.[INVLNUM],
      x.[MTGORIG],
      x.[TP1],
      x.[TP2],
      x.[MAXTERM],
      x.[SELLER],
      x.[CID_SELLER_AGENT],
      x.[S_SPF7],
      A22.Descript AS [S_SPF7_Description],
      x.[S_SPF8],
      A23.Descript AS [S_SPF8_Description],
      x.[S_SPF9],
      A24.Descript AS [S_SPF9_Description],
      x.[S_SPF10],
      A25.Descript AS [S_SPF10_Description],
      x.[UPBO],
      x.[ESCROW_ACCT_BALANCE],
      x.[ESCROW_PYMT_AMT],
      x.[NEXTPMTDUEDATE],
      x.[APPR_DOC_ID],
      x.[READY_FOR_DELIVERY],
      x.[S_INT_ACCRUAL_TYPE],
      A26.Descript AS [S_INT_ACCRUAL_TYPE_Description],
      x.[S_INT_CALC_BASIS_TYPE],
      A27.Descript AS [S_INT_CALC_BASIS_TYPE_Description],
      x.[INT_CALC_EFF_MONTHS],
      x.[S_INT_CALC_PERIOD],
      A28.Descript AS [S_INT_CALC_PERIOD_Description],
      x.[S_INT_CALC_METHOD],
      A29.Descript AS [S_INT_CALC_METHOD_Description],
      x.[LOAN_DELIV_GSE],
      x.[LTV_RATIO_PCT],
      x.[S_FNM_HOME_IMP_PROD],
      A30.Descript AS [S_FNM_HOME_IMP_PROD_Description],
      x.[ADJ_LOAN_AMT],
      x.[ADJ_LOAN_AMT_OVRD],
      x.[APPR_DOC_ID_OVER],
      x.[MLADISCCOMPLETE],
      x.[S_SIGNDOCPUSHBACK],
      A31.Descript AS [S_SIGNDOCPUSHBACK_Description],
      x.[MI_CANCELLED],
      x.[HFA_IDENTIFIER]
   FROM [clt_NetO].[DELIVERY] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_SPF1 = A0.DBSYMBOL AND A0.[TableName] = 'DELIVERY' and A0.[COLUMNNAME] = 'S_SPF1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_SPF2 = A1.DBSYMBOL AND A1.[TableName] = 'DELIVERY' and A1.[COLUMNNAME] = 'S_SPF2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_SPF3 = A2.DBSYMBOL AND A2.[TableName] = 'DELIVERY' and A2.[COLUMNNAME] = 'S_SPF3'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_SPF4 = A3.DBSYMBOL AND A3.[TableName] = 'DELIVERY' and A3.[COLUMNNAME] = 'S_SPF4'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_SPF5 = A4.DBSYMBOL AND A4.[TableName] = 'DELIVERY' and A4.[COLUMNNAME] = 'S_SPF5'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_SPF6 = A5.DBSYMBOL AND A5.[TableName] = 'DELIVERY' and A5.[COLUMNNAME] = 'S_SPF6'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_SFSRC1 = A6.DBSYMBOL AND A6.[TableName] = 'DELIVERY' and A6.[COLUMNNAME] = 'S_SFSRC1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_SFSRC2 = A7.DBSYMBOL AND A7.[TableName] = 'DELIVERY' and A7.[COLUMNNAME] = 'S_SFSRC2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.S_BECA1 = A8.DBSYMBOL AND A8.[TableName] = 'DELIVERY' and A8.[COLUMNNAME] = 'S_BECA1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.S_BECA2 = A9.DBSYMBOL AND A9.[TableName] = 'DELIVERY' and A9.[COLUMNNAME] = 'S_BECA2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.S_BECF1 = A10.DBSYMBOL AND A10.[TableName] = 'DELIVERY' and A10.[COLUMNNAME] = 'S_BECF1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A11 on x.S_BECF2 = A11.DBSYMBOL AND A11.[TableName] = 'DELIVERY' and A11.[COLUMNNAME] = 'S_BECF2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A12 on x.S_DPSRC1 = A12.DBSYMBOL AND A12.[TableName] = 'DELIVERY' and A12.[COLUMNNAME] = 'S_DPSRC1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A13 on x.S_DPSRC2 = A13.DBSYMBOL AND A13.[TableName] = 'DELIVERY' and A13.[COLUMNNAME] = 'S_DPSRC2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A14 on x.S_DPSRC3 = A14.DBSYMBOL AND A14.[TableName] = 'DELIVERY' and A14.[COLUMNNAME] = 'S_DPSRC3'
      LEFT JOIN [clt_NetO].[SymbolLookup] A15 on x.S_DPSRC4 = A15.DBSYMBOL AND A15.[TableName] = 'DELIVERY' and A15.[COLUMNNAME] = 'S_DPSRC4'
      LEFT JOIN [clt_NetO].[SymbolLookup] A16 on x.S_CCSRC1 = A16.DBSYMBOL AND A16.[TableName] = 'DELIVERY' and A16.[COLUMNNAME] = 'S_CCSRC1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A17 on x.S_CCSRC2 = A17.DBSYMBOL AND A17.[TableName] = 'DELIVERY' and A17.[COLUMNNAME] = 'S_CCSRC2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A18 on x.S_CCSRC3 = A18.DBSYMBOL AND A18.[TableName] = 'DELIVERY' and A18.[COLUMNNAME] = 'S_CCSRC3'
      LEFT JOIN [clt_NetO].[SymbolLookup] A19 on x.S_CCSRC4 = A19.DBSYMBOL AND A19.[TableName] = 'DELIVERY' and A19.[COLUMNNAME] = 'S_CCSRC4'
      LEFT JOIN [clt_NetO].[SymbolLookup] A20 on x.S_LFC = A20.DBSYMBOL AND A20.[TableName] = 'DELIVERY' and A20.[COLUMNNAME] = 'S_LFC'
      LEFT JOIN [clt_NetO].[SymbolLookup] A21 on x.S_RFC = A21.DBSYMBOL AND A21.[TableName] = 'DELIVERY' and A21.[COLUMNNAME] = 'S_RFC'
      LEFT JOIN [clt_NetO].[SymbolLookup] A22 on x.S_SPF7 = A22.DBSYMBOL AND A22.[TableName] = 'DELIVERY' and A22.[COLUMNNAME] = 'S_SPF7'
      LEFT JOIN [clt_NetO].[SymbolLookup] A23 on x.S_SPF8 = A23.DBSYMBOL AND A23.[TableName] = 'DELIVERY' and A23.[COLUMNNAME] = 'S_SPF8'
      LEFT JOIN [clt_NetO].[SymbolLookup] A24 on x.S_SPF9 = A24.DBSYMBOL AND A24.[TableName] = 'DELIVERY' and A24.[COLUMNNAME] = 'S_SPF9'
      LEFT JOIN [clt_NetO].[SymbolLookup] A25 on x.S_SPF10 = A25.DBSYMBOL AND A25.[TableName] = 'DELIVERY' and A25.[COLUMNNAME] = 'S_SPF10'
      LEFT JOIN [clt_NetO].[SymbolLookup] A26 on x.S_INT_ACCRUAL_TYPE = A26.DBSYMBOL AND A26.[TableName] = 'DELIVERY' and A26.[COLUMNNAME] = 'S_INT_ACCRUAL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A27 on x.S_INT_CALC_BASIS_TYPE = A27.DBSYMBOL AND A27.[TableName] = 'DELIVERY' and A27.[COLUMNNAME] = 'S_INT_CALC_BASIS_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A28 on x.S_INT_CALC_PERIOD = A28.DBSYMBOL AND A28.[TableName] = 'DELIVERY' and A28.[COLUMNNAME] = 'S_INT_CALC_PERIOD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A29 on x.S_INT_CALC_METHOD = A29.DBSYMBOL AND A29.[TableName] = 'DELIVERY' and A29.[COLUMNNAME] = 'S_INT_CALC_METHOD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A30 on x.S_FNM_HOME_IMP_PROD = A30.DBSYMBOL AND A30.[TableName] = 'DELIVERY' and A30.[COLUMNNAME] = 'S_FNM_HOME_IMP_PROD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A31 on x.S_SIGNDOCPUSHBACK = A31.DBSYMBOL AND A31.[TableName] = 'DELIVERY' and A31.[COLUMNNAME] = 'S_SIGNDOCPUSHBACK'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
