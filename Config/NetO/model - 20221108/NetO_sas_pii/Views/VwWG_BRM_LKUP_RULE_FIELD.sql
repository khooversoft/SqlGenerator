-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_BRM_LKUP_RULE_FIELD]
AS
   SELECT
      x.[BRMID] AS [BRMID],
      x.[RULE_OCC] AS [RULE_OCC],
      x.[RULE_ITEM_OCC] AS [RULE_ITEM_OCC],
      x.[RULE_ITEM_GRIDID] AS [RULE_ITEM_GRIDID],
      x.[RULE_ITEM_GRID_RSLT_ROW] AS [RULE_ITEM_GRID_RSLT_ROW],
      x.[RULE_ITEM_GRID_RSLT_COL] AS [RULE_ITEM_GRID_RSLT_COL],
      x.[RULE_ITEM_FIELD_NAME] AS [RULE_ITEM_FIELD_NAME],
      x.[S_RULE_ITEM_OPERATOR] AS [S_RULE_ITEM_OPERATOR],
      x.[RULE_ITEM_FIELDID] AS [RULE_ITEM_FIELDID]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_FIELD] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
