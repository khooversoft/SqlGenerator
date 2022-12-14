-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_BRM_DEFN_GRID]
AS
   SELECT
      x.[GRIDID] AS [GRIDID],
      x.[S_USAGE_TYPE] AS [S_USAGE_TYPE],
      A0.[Descript] AS [S_USAGE_TYPE_X],
      x.[S_GRID_STATUS] AS [S_GRID_STATUS],
      A1.[Descript] AS [S_GRID_STATUS_X],
      x.[S_GRID_CATEGORY] AS [S_GRID_CATEGORY],
      A2.[Descript] AS [S_GRID_CATEGORY_X],
      x.[GRID_NAME] AS [GRID_NAME],
      x.[GRID_NBR_DIMS] AS [GRID_NBR_DIMS],
      x.[RSLT_START_ROW] AS [RSLT_START_ROW],
      x.[CREATED_BY] AS [CREATED_BY],
      x.[CREATED_DATE] AS [CREATED_DATE],
      x.[RSLT_START_COL] AS [RSLT_START_COL],
      x.[RSLT_SPAN_ROWS] AS [RSLT_SPAN_ROWS],
      x.[RSLT_SPAN_COLS] AS [RSLT_SPAN_COLS],
      x.[CURRENT_USER_DATETIME] AS [CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID] AS [CURRENT_USER_ID]
   FROM [clt_NetO].[WG_BRM_DEFN_GRID] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_USAGE_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_DEFN_GRID' and A0.[COLUMNNAME] = 'S_USAGE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_GRID_STATUS] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_BRM_DEFN_GRID' and A1.[COLUMNNAME] = 'S_GRID_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_GRID_CATEGORY] = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_BRM_DEFN_GRID' and A2.[COLUMNNAME] = 'S_GRID_CATEGORY'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
