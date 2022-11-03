-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_BRM_DEFN_GRID]
AS
   SELECT
      x.[GRIDID],
      x.[S_USAGE_TYPE],
      x.[S_GRID_STATUS],
      x.[S_GRID_CATEGORY],
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
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
