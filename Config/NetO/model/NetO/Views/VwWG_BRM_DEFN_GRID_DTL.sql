-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_BRM_DEFN_GRID_DTL]
AS
   SELECT
      x.[GRIDID],
      x.[DIM_OCC],
      x.[S_GRID_VERT_HORIZ],
      x.[S_GRID_OPERATOR],
      x.[GRID_FIELD_NAME],
      x.[GRID_LABEL_TEXT],
      x.[GRID_LABEL_OCCS],
      x.[GRID_LABEL_START_ROW],
      x.[GRID_LABEL_SPAN_ROWS],
      x.[GRID_LABEL_START_COL],
      x.[GRID_LABEL_SPAN_COLS],
      x.[GRID_TGT_VAL_OCCS],
      x.[GRID_TGT_VAL_START_COL],
      x.[GRID_TGT_VAL_START_ROW],
      x.[S_GRID_TGT_VAL_SPAN_TYPE],
      x.[FIELDID]
   FROM [clt_NetO].[WG_BRM_DEFN_GRID_DTL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;