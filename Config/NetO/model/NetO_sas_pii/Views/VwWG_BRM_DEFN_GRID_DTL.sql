-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_BRM_DEFN_GRID_DTL]
AS
   SELECT
      x.[GRIDID] AS [GRIDID],
      x.[DIM_OCC] AS [DIM_OCC],
      x.[S_GRID_VERT_HORIZ] AS [S_GRID_VERT_HORIZ],
      A0.Descript AS [S_GRID_VERT_HORIZ_Description],
      x.[S_GRID_OPERATOR] AS [S_GRID_OPERATOR],
      A1.Descript AS [S_GRID_OPERATOR_Description],
      x.[GRID_FIELD_NAME] AS [GRID_FIELD_NAME],
      x.[GRID_LABEL_TEXT] AS [GRID_LABEL_TEXT],
      x.[GRID_LABEL_OCCS] AS [GRID_LABEL_OCCS],
      x.[GRID_LABEL_START_ROW] AS [GRID_LABEL_START_ROW],
      x.[GRID_LABEL_SPAN_ROWS] AS [GRID_LABEL_SPAN_ROWS],
      x.[GRID_LABEL_START_COL] AS [GRID_LABEL_START_COL],
      x.[GRID_LABEL_SPAN_COLS] AS [GRID_LABEL_SPAN_COLS],
      x.[GRID_TGT_VAL_OCCS] AS [GRID_TGT_VAL_OCCS],
      x.[GRID_TGT_VAL_START_COL] AS [GRID_TGT_VAL_START_COL],
      x.[GRID_TGT_VAL_START_ROW] AS [GRID_TGT_VAL_START_ROW],
      x.[S_GRID_TGT_VAL_SPAN_TYPE] AS [S_GRID_TGT_VAL_SPAN_TYPE],
      A2.Descript AS [S_GRID_TGT_VAL_SPAN_TYPE_Description],
      x.[FIELDID] AS [FIELDID]
   FROM [clt_NetO].[WG_BRM_DEFN_GRID_DTL] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_GRID_VERT_HORIZ = A0.DBSYMBOL AND A0.[TableName] = 'WG_BRM_DEFN_GRID_DTL' and A0.[COLUMNNAME] = 'S_GRID_VERT_HORIZ'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_GRID_OPERATOR = A1.DBSYMBOL AND A1.[TableName] = 'WG_BRM_DEFN_GRID_DTL' and A1.[COLUMNNAME] = 'S_GRID_OPERATOR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_GRID_TGT_VAL_SPAN_TYPE = A2.DBSYMBOL AND A2.[TableName] = 'WG_BRM_DEFN_GRID_DTL' and A2.[COLUMNNAME] = 'S_GRID_TGT_VAL_SPAN_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
