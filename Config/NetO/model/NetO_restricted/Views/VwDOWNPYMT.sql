-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwDOWNPYMT]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[DPYMTCTR],
      x.[S_TYPE],
      A0.[Descript] AS [S_TYPE_X],
      x.[AMOUNT],
      HASHBYTES('SHA2_256', x.[NAME]) AS [NAME],
      x.[ADDR1],
      x.[ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[PHONE],
      x.[RELATION],
      x.[INCASS],
      x.[FNDGIVEN],
      x.[DTAVAIL],
      x.[FININST],
      x.[ACCTNUM],
      x.[BANKNAME],
      x.[FIADDR1],
      x.[FIADDR2],
      x.[FICITY],
      x.[FISTATE],
      x.[FIZIP],
      x.[FIACCTYP],
      x.[VERIFYFND],
      x.[OTHERDOWNPAYTYPEDESC],
      x.[S_DOWN_PMT_SRC_TYP],
      A1.[Descript] AS [S_DOWN_PMT_SRC_TYP_X],
      x.[S_DOWN_PMT_SRC_OTH],
      A2.[Descript] AS [S_DOWN_PMT_SRC_OTH_X],
      x.[S_DOWN_PMT_TYP],
      A3.[Descript] AS [S_DOWN_PMT_TYP_X],
      x.[S_TYPE_OTH],
      A4.[Descript] AS [S_TYPE_OTH_X],
      x.[PRIMARY_SRC],
      x.[DOWNPAYMENTPERCENT],
      x.[S_DOWN_PMT_SRC],
      A5.[Descript] AS [S_DOWN_PMT_SRC_X],
      x.[S_TYPENM],
      A6.[Descript] AS [S_TYPENM_X],
      x.[DOWNPAYTYPENMOTHERDESC],
      x.[RECORD_CREATED],
      x.[TOTAL_GIFT_FUNDS],
      x.[ASSETCTR]
   FROM [clt_NetO].[DOWNPYMT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'DOWNPYMT' and A0.[COLUMNNAME] = 'S_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_DOWN_PMT_SRC_TYP] = A1.[DBSYMBOL] AND A1.[TableName] = 'DOWNPYMT' and A1.[COLUMNNAME] = 'S_DOWN_PMT_SRC_TYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_DOWN_PMT_SRC_OTH] = A2.[DBSYMBOL] AND A2.[TableName] = 'DOWNPYMT' and A2.[COLUMNNAME] = 'S_DOWN_PMT_SRC_OTH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_DOWN_PMT_TYP] = A3.[DBSYMBOL] AND A3.[TableName] = 'DOWNPYMT' and A3.[COLUMNNAME] = 'S_DOWN_PMT_TYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_TYPE_OTH] = A4.[DBSYMBOL] AND A4.[TableName] = 'DOWNPYMT' and A4.[COLUMNNAME] = 'S_TYPE_OTH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_DOWN_PMT_SRC] = A5.[DBSYMBOL] AND A5.[TableName] = 'DOWNPYMT' and A5.[COLUMNNAME] = 'S_DOWN_PMT_SRC'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_TYPENM] = A6.[DBSYMBOL] AND A6.[TableName] = 'DOWNPYMT' and A6.[COLUMNNAME] = 'S_TYPENM'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
