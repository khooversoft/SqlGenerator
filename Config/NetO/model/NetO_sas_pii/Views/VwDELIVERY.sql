-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwDELIVERY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[COMNUM] AS [COMNUM],
      x.[CONTRACT] AS [CONTRACT],
      x.[COMTYPE] AS [COMTYPE],
      x.[SELLNUM] AS [SELLNUM],
      x.[NUMBED1] AS [NUMBED1],
      x.[NUMBED2] AS [NUMBED2],
      x.[NUMBED3] AS [NUMBED3],
      x.[NUMBED4] AS [NUMBED4],
      x.[RENTS1] AS [RENTS1],
      x.[RENTS2] AS [RENTS2],
      x.[RENTS3] AS [RENTS3],
      x.[RENTS4] AS [RENTS4],
      x.[S_SPF1] AS [S_SPF1],
      A0.Descript AS [S_SPF1Description],
      x.[S_SPF2] AS [S_SPF2],
      A1.Descript AS [S_SPF2Description],
      x.[S_SPF3] AS [S_SPF3],
      A2.Descript AS [S_SPF3Description],
      x.[S_SPF4] AS [S_SPF4],
      A3.Descript AS [S_SPF4Description],
      x.[S_SPF5] AS [S_SPF5],
      A4.Descript AS [S_SPF5Description],
      x.[S_SPF6] AS [S_SPF6],
      A5.Descript AS [S_SPF6Description],
      x.[ASSUM] AS [ASSUM],
      x.[RDF] AS [RDF],
      x.[INTPD] AS [INTPD],
      x.[MATDATE] AS [MATDATE],
      x.[S_SFSRC1] AS [S_SFSRC1],
      A6.Descript AS [S_SFSRC1Description],
      x.[S_SFSRC2] AS [S_SFSRC2],
      A7.Descript AS [S_SFSRC2Description],
      x.[SFAMT1] AS [SFAMT1],
      x.[SFAMT2] AS [SFAMT2],
      x.[S_BECA1] AS [S_BECA1],
      A8.Descript AS [S_BECA1Description],
      x.[S_BECA2] AS [S_BECA2],
      A9.Descript AS [S_BECA2Description],
      x.[S_BECF1] AS [S_BECF1],
      A10.Descript AS [S_BECF1Description],
      x.[S_BECF2] AS [S_BECF2],
      A11.Descript AS [S_BECF2Description],
      x.[S_DPSRC1] AS [S_DPSRC1],
      A12.Descript AS [S_DPSRC1Description],
      x.[S_DPSRC2] AS [S_DPSRC2],
      A13.Descript AS [S_DPSRC2Description],
      x.[S_DPSRC3] AS [S_DPSRC3],
      A14.Descript AS [S_DPSRC3Description],
      x.[S_DPSRC4] AS [S_DPSRC4],
      A15.Descript AS [S_DPSRC4Description],
      x.[DPAMT1] AS [DPAMT1],
      x.[DPAMT2] AS [DPAMT2],
      x.[DPAMT3] AS [DPAMT3],
      x.[DPAMT4] AS [DPAMT4],
      x.[S_CCSRC1] AS [S_CCSRC1],
      A16.Descript AS [S_CCSRC1Description],
      x.[S_CCSRC2] AS [S_CCSRC2],
      A17.Descript AS [S_CCSRC2Description],
      x.[S_CCSRC3] AS [S_CCSRC3],
      A18.Descript AS [S_CCSRC3Description],
      x.[S_CCSRC4] AS [S_CCSRC4],
      A19.Descript AS [S_CCSRC4Description],
      x.[CCAMT1] AS [CCAMT1],
      x.[CCAMT2] AS [CCAMT2],
      x.[CCAMT3] AS [CCAMT3],
      x.[CCAMT4] AS [CCAMT4],
      x.[MICOV] AS [MICOV],
      x.[UPB] AS [UPB],
      x.[S_LFC] AS [S_LFC],
      A20.Descript AS [S_LFCDescription],
      x.[INTEND] AS [INTEND],
      x.[LPID] AS [LPID],
      x.[INTONLY] AS [INTONLY],
      x.[LOOKBACK] AS [LOOKBACK],
      x.[NETNEGAM] AS [NETNEGAM],
      x.[S_RFC] AS [S_RFC],
      A21.Descript AS [S_RFCDescription],
      x.[UWNAME] AS [UWNAME],
      x.[INVLNUM] AS [INVLNUM],
      x.[MTGORIG] AS [MTGORIG],
      x.[TP1] AS [TP1],
      x.[TP2] AS [TP2],
      x.[MAXTERM] AS [MAXTERM],
      x.[SELLER] AS [SELLER],
      x.[CID_SELLER_AGENT] AS [CID_SELLER_AGENT],
      x.[S_SPF7] AS [S_SPF7],
      A22.Descript AS [S_SPF7Description],
      x.[S_SPF8] AS [S_SPF8],
      A23.Descript AS [S_SPF8Description],
      x.[S_SPF9] AS [S_SPF9],
      A24.Descript AS [S_SPF9Description],
      x.[S_SPF10] AS [S_SPF10],
      A25.Descript AS [S_SPF10Description],
      x.[UPBO] AS [UPBO],
      x.[ESCROW_ACCT_BALANCE] AS [ESCROW_ACCT_BALANCE],
      x.[ESCROW_PYMT_AMT] AS [ESCROW_PYMT_AMT],
      x.[NEXTPMTDUEDATE] AS [NEXTPMTDUEDATE],
      x.[APPR_DOC_ID] AS [APPR_DOC_ID],
      x.[READY_FOR_DELIVERY] AS [READY_FOR_DELIVERY],
      x.[S_INT_ACCRUAL_TYPE] AS [S_INT_ACCRUAL_TYPE],
      A26.Descript AS [S_INT_ACCRUAL_TYPEDescription],
      x.[S_INT_CALC_BASIS_TYPE] AS [S_INT_CALC_BASIS_TYPE],
      A27.Descript AS [S_INT_CALC_BASIS_TYPEDescription],
      x.[INT_CALC_EFF_MONTHS] AS [INT_CALC_EFF_MONTHS],
      x.[S_INT_CALC_PERIOD] AS [S_INT_CALC_PERIOD],
      A28.Descript AS [S_INT_CALC_PERIODDescription],
      x.[S_INT_CALC_METHOD] AS [S_INT_CALC_METHOD],
      A29.Descript AS [S_INT_CALC_METHODDescription],
      x.[LOAN_DELIV_GSE] AS [LOAN_DELIV_GSE],
      x.[LTV_RATIO_PCT] AS [LTV_RATIO_PCT],
      x.[S_FNM_HOME_IMP_PROD] AS [S_FNM_HOME_IMP_PROD],
      A30.Descript AS [S_FNM_HOME_IMP_PRODDescription],
      x.[ADJ_LOAN_AMT] AS [ADJ_LOAN_AMT],
      x.[ADJ_LOAN_AMT_OVRD] AS [ADJ_LOAN_AMT_OVRD],
      x.[APPR_DOC_ID_OVER] AS [APPR_DOC_ID_OVER],
      x.[MLADISCCOMPLETE] AS [MLADISCCOMPLETE],
      x.[S_SIGNDOCPUSHBACK] AS [S_SIGNDOCPUSHBACK],
      A31.Descript AS [S_SIGNDOCPUSHBACKDescription],
      x.[MI_CANCELLED] AS [MI_CANCELLED],
      x.[HFA_IDENTIFIER] AS [HFA_IDENTIFIER]
   FROM [clt_NetO].[DELIVERY] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_SPF1 = A0.[DBSYMBOL] AND A0.[TableName] = 'DELIVERY' and A0.[COLUMNNAME] = 'S_SPF1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_SPF2 = A1.[DBSYMBOL] AND A1.[TableName] = 'DELIVERY' and A1.[COLUMNNAME] = 'S_SPF2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_SPF3 = A2.[DBSYMBOL] AND A2.[TableName] = 'DELIVERY' and A2.[COLUMNNAME] = 'S_SPF3'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_SPF4 = A3.[DBSYMBOL] AND A3.[TableName] = 'DELIVERY' and A3.[COLUMNNAME] = 'S_SPF4'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_SPF5 = A4.[DBSYMBOL] AND A4.[TableName] = 'DELIVERY' and A4.[COLUMNNAME] = 'S_SPF5'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_SPF6 = A5.[DBSYMBOL] AND A5.[TableName] = 'DELIVERY' and A5.[COLUMNNAME] = 'S_SPF6'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_SFSRC1 = A6.[DBSYMBOL] AND A6.[TableName] = 'DELIVERY' and A6.[COLUMNNAME] = 'S_SFSRC1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_SFSRC2 = A7.[DBSYMBOL] AND A7.[TableName] = 'DELIVERY' and A7.[COLUMNNAME] = 'S_SFSRC2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.S_BECA1 = A8.[DBSYMBOL] AND A8.[TableName] = 'DELIVERY' and A8.[COLUMNNAME] = 'S_BECA1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.S_BECA2 = A9.[DBSYMBOL] AND A9.[TableName] = 'DELIVERY' and A9.[COLUMNNAME] = 'S_BECA2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.S_BECF1 = A10.[DBSYMBOL] AND A10.[TableName] = 'DELIVERY' and A10.[COLUMNNAME] = 'S_BECF1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A11 on x.S_BECF2 = A11.[DBSYMBOL] AND A11.[TableName] = 'DELIVERY' and A11.[COLUMNNAME] = 'S_BECF2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A12 on x.S_DPSRC1 = A12.[DBSYMBOL] AND A12.[TableName] = 'DELIVERY' and A12.[COLUMNNAME] = 'S_DPSRC1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A13 on x.S_DPSRC2 = A13.[DBSYMBOL] AND A13.[TableName] = 'DELIVERY' and A13.[COLUMNNAME] = 'S_DPSRC2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A14 on x.S_DPSRC3 = A14.[DBSYMBOL] AND A14.[TableName] = 'DELIVERY' and A14.[COLUMNNAME] = 'S_DPSRC3'
      LEFT JOIN [clt_NetO].[SymbolLookup] A15 on x.S_DPSRC4 = A15.[DBSYMBOL] AND A15.[TableName] = 'DELIVERY' and A15.[COLUMNNAME] = 'S_DPSRC4'
      LEFT JOIN [clt_NetO].[SymbolLookup] A16 on x.S_CCSRC1 = A16.[DBSYMBOL] AND A16.[TableName] = 'DELIVERY' and A16.[COLUMNNAME] = 'S_CCSRC1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A17 on x.S_CCSRC2 = A17.[DBSYMBOL] AND A17.[TableName] = 'DELIVERY' and A17.[COLUMNNAME] = 'S_CCSRC2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A18 on x.S_CCSRC3 = A18.[DBSYMBOL] AND A18.[TableName] = 'DELIVERY' and A18.[COLUMNNAME] = 'S_CCSRC3'
      LEFT JOIN [clt_NetO].[SymbolLookup] A19 on x.S_CCSRC4 = A19.[DBSYMBOL] AND A19.[TableName] = 'DELIVERY' and A19.[COLUMNNAME] = 'S_CCSRC4'
      LEFT JOIN [clt_NetO].[SymbolLookup] A20 on x.S_LFC = A20.[DBSYMBOL] AND A20.[TableName] = 'DELIVERY' and A20.[COLUMNNAME] = 'S_LFC'
      LEFT JOIN [clt_NetO].[SymbolLookup] A21 on x.S_RFC = A21.[DBSYMBOL] AND A21.[TableName] = 'DELIVERY' and A21.[COLUMNNAME] = 'S_RFC'
      LEFT JOIN [clt_NetO].[SymbolLookup] A22 on x.S_SPF7 = A22.[DBSYMBOL] AND A22.[TableName] = 'DELIVERY' and A22.[COLUMNNAME] = 'S_SPF7'
      LEFT JOIN [clt_NetO].[SymbolLookup] A23 on x.S_SPF8 = A23.[DBSYMBOL] AND A23.[TableName] = 'DELIVERY' and A23.[COLUMNNAME] = 'S_SPF8'
      LEFT JOIN [clt_NetO].[SymbolLookup] A24 on x.S_SPF9 = A24.[DBSYMBOL] AND A24.[TableName] = 'DELIVERY' and A24.[COLUMNNAME] = 'S_SPF9'
      LEFT JOIN [clt_NetO].[SymbolLookup] A25 on x.S_SPF10 = A25.[DBSYMBOL] AND A25.[TableName] = 'DELIVERY' and A25.[COLUMNNAME] = 'S_SPF10'
      LEFT JOIN [clt_NetO].[SymbolLookup] A26 on x.S_INT_ACCRUAL_TYPE = A26.[DBSYMBOL] AND A26.[TableName] = 'DELIVERY' and A26.[COLUMNNAME] = 'S_INT_ACCRUAL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A27 on x.S_INT_CALC_BASIS_TYPE = A27.[DBSYMBOL] AND A27.[TableName] = 'DELIVERY' and A27.[COLUMNNAME] = 'S_INT_CALC_BASIS_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A28 on x.S_INT_CALC_PERIOD = A28.[DBSYMBOL] AND A28.[TableName] = 'DELIVERY' and A28.[COLUMNNAME] = 'S_INT_CALC_PERIOD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A29 on x.S_INT_CALC_METHOD = A29.[DBSYMBOL] AND A29.[TableName] = 'DELIVERY' and A29.[COLUMNNAME] = 'S_INT_CALC_METHOD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A30 on x.S_FNM_HOME_IMP_PROD = A30.[DBSYMBOL] AND A30.[TableName] = 'DELIVERY' and A30.[COLUMNNAME] = 'S_FNM_HOME_IMP_PROD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A31 on x.S_SIGNDOCPUSHBACK = A31.[DBSYMBOL] AND A31.[TableName] = 'DELIVERY' and A31.[COLUMNNAME] = 'S_SIGNDOCPUSHBACK'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
