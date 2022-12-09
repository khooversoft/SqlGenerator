-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_BRM_DEFN_GRID]
AS
   SELECT
      x.[GRIDID],
      x.[S_USAGE_TYPE],
      A0.Descript AS [USAGE_TYPE],
      x.[S_GRID_STATUS],
      A1.Descript AS [GRID_STATUS],
      x.[S_GRID_CATEGORY],
      A2.Descript AS [GRID_CATEGORY],
      x.[GRID_NAME],
      x.[GRID_NBR_DIMS],
      x.[RSLT_START_ROW],
      x.[CREATED_BY],
      x.[CREATED_DATE],
      x.[RSLT_START_COL],
      x.[RSLT_SPAN_ROWS],
      x.[RSLT_SPAN_COLS],
      x.[CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID]
   FROM [clt_NetO].[WG_BRM_DEFN_GRID] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_USAGE_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_DEFN_GRID' and A0.[COLUMNNAME] = 'S_USAGE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_GRID_STATUS] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_BRM_DEFN_GRID' and A1.[COLUMNNAME] = 'S_GRID_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_GRID_CATEGORY] = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_BRM_DEFN_GRID' and A2.[COLUMNNAME] = 'S_GRID_CATEGORY'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
