-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_BRM_DEFN_GRID]
AS
   SELECT
      x.[GRIDID] AS [GRIDID],
      x.[S_USAGE_TYPE] AS [S_USAGE_TYPE],
      x.[S_GRID_STATUS] AS [S_GRID_STATUS],
      x.[S_GRID_CATEGORY] AS [S_GRID_CATEGORY],
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
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
