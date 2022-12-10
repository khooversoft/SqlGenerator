-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwUWAPPR]
AS
   SELECT
      x.[LNUM],
      x.[CNTR],
      x.[DBID],
      x.[S_PRPTYP],
      A0.[Descript] AS [S_PRPTYP_X],
      x.[UNITNUM],
      x.[PROJNAME],
      x.[APPRAISAL],
      x.[APPRAISER],
      x.[APPRDATE],
      x.[APPRVALUE],
      x.[LANDVALUE],
      x.[ORIGCOST],
      x.[YRPURCH],
      x.[YRBUILT],
      x.[LICENSE],
      x.[ADDR],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[PHONE],
      x.[FAX],
      x.[NET1],
      x.[GROSS1],
      x.[NET2],
      x.[GROSS2],
      x.[NET3],
      x.[GROSS3],
      x.[NET4],
      x.[GROSS4],
      x.[NET5],
      x.[GROSS5],
      x.[NET6],
      x.[GROSS6],
      x.[S_APPRTYPE],
      A1.[Descript] AS [S_APPRTYPE_X],
      x.[SUBMFLG],
      x.[LANDTOVALUE],
      x.[APPRVALUEINDICATOR],
      A2.[Descript] AS [APPRVALUEINDICATOR_X],
      x.[APPRLICENSECODE],
      x.[LOCATION],
      x.[ZONING],
      x.[SQFEET],
      x.[ACREAGE],
      x.[EFFAGE],
      x.[FORSALE],
      x.[LAST12],
      x.[LESS750],
      x.[HVE_EFFECTIVE_DT],
      x.[S_APPRFORMTYPE],
      A3.[Descript] AS [S_APPRFORMTYPE_X],
      x.[APPRFORMTYPEOTHDESC],
      x.[S_PRPFORMTYPE],
      A4.[Descript] AS [S_PRPFORMTYPE_X],
      x.[PRPFORMTYPEOTHDESC],
      x.[S_PRPMETHODTYPE],
      A5.[Descript] AS [S_PRPMETHODTYPE_X],
      x.[PRPMETHODTYPEOTHDESC],
      x.[S_LVLPRPRVW],
      A6.[Descript] AS [S_LVLPRPRVW_X],
      x.[APPRLVLPRPRVWTYPEOTHDESC],
      HASHBYTES('SHA2_256', x.[APPR_SUPER_LIC]) AS [APPR_SUPER_LIC],
      x.[DATEORDERED],
      x.[ORDEREDBY],
      x.[DUEDATE],
      x.[QUOTE],
      x.[ACTUALCOST],
      x.[DATERECEIVED],
      x.[S_STATUS],
      A7.[Descript] AS [S_STATUS_X],
      x.[REQUESTEDDATE],
      x.[REQUESTEDBY],
      x.[DATEREVIEWED],
      x.[REVIEWEDBY],
      x.[RESPONSIVENESS],
      x.[TURNAROUNDTIME],
      x.[REPORTQUALITY],
      x.[REVISIONREQUIRED],
      x.[ACTUALFEEAMT],
      x.[INVOICENUMB],
      x.[INVOICEDATE],
      x.[REQUISITIONSENTDATE],
      x.[REQ_NOTES_DBID],
      x.[REQ_NOTES_SN],
      x.[REQAPPRCOMPANY],
      x.[REQAPPR],
      x.[SITEVALUE],
      x.[SUBJECTTOREPAIRS],
      x.[S_APPRMETH],
      A8.[Descript] AS [S_APPRMETH_X],
      x.[S_AVM],
      A9.[Descript] AS [S_AVM_X],
      x.[S_AVMOTH],
      A10.[Descript] AS [S_AVMOTH_X],
      HASHBYTES('SHA2_256', x.[APPR_SUPER_FNAME]) AS [APPR_SUPER_FNAME],
      HASHBYTES('SHA2_256', x.[APPR_SUPER_LNAME]) AS [APPR_SUPER_LNAME],
      x.[APPRREINSPFEE],
      x.[APPR_COMMENTS],
      x.[RUSHED],
      x.[SENIORLVLRVW],
      x.[GROSSLIVINGAREA],
      x.[TOTAL_ROOMS],
      x.[BEDROOMS],
      x.[BATHS],
      x.[HOA_FEES],
      x.[FHA_VA_APPRAISER_CHUMSID],
      x.[ADDR2],
      x.[INV_COLL_PROG_ID],
      A11.[Descript] AS [INV_COLL_PROG_ID_X],
      x.[FORECAST_STD_DEV],
      x.[S_HOA_FEES_PERIOD_TYPE],
      A12.[Descript] AS [S_HOA_FEES_PERIOD_TYPE_X]
   FROM [clt_NetO].[UWAPPR] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_PRPTYP] = A0.[DBSYMBOL] AND A0.[TableName] = 'UWAPPR' and A0.[COLUMNNAME] = 'S_PRPTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_APPRTYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'UWAPPR' and A1.[COLUMNNAME] = 'S_APPRTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[APPRVALUEINDICATOR] = A2.[DBSYMBOL] AND A2.[TableName] = 'UWAPPR' and A2.[COLUMNNAME] = 'APPRVALUEINDICATOR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_APPRFORMTYPE] = A3.[DBSYMBOL] AND A3.[TableName] = 'UWAPPR' and A3.[COLUMNNAME] = 'S_APPRFORMTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_PRPFORMTYPE] = A4.[DBSYMBOL] AND A4.[TableName] = 'UWAPPR' and A4.[COLUMNNAME] = 'S_PRPFORMTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_PRPMETHODTYPE] = A5.[DBSYMBOL] AND A5.[TableName] = 'UWAPPR' and A5.[COLUMNNAME] = 'S_PRPMETHODTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_LVLPRPRVW] = A6.[DBSYMBOL] AND A6.[TableName] = 'UWAPPR' and A6.[COLUMNNAME] = 'S_LVLPRPRVW'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.[S_STATUS] = A7.[DBSYMBOL] AND A7.[TableName] = 'UWAPPR' and A7.[COLUMNNAME] = 'S_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.[S_APPRMETH] = A8.[DBSYMBOL] AND A8.[TableName] = 'UWAPPR' and A8.[COLUMNNAME] = 'S_APPRMETH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.[S_AVM] = A9.[DBSYMBOL] AND A9.[TableName] = 'UWAPPR' and A9.[COLUMNNAME] = 'S_AVM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.[S_AVMOTH] = A10.[DBSYMBOL] AND A10.[TableName] = 'UWAPPR' and A10.[COLUMNNAME] = 'S_AVMOTH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A11 on x.[INV_COLL_PROG_ID] = A11.[DBSYMBOL] AND A11.[TableName] = 'UWAPPR' and A11.[COLUMNNAME] = 'INV_COLL_PROG_ID'
      LEFT JOIN [clt_NetO].[SymbolLookup] A12 on x.[S_HOA_FEES_PERIOD_TYPE] = A12.[DBSYMBOL] AND A12.[TableName] = 'UWAPPR' and A12.[COLUMNNAME] = 'S_HOA_FEES_PERIOD_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
