-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_BRM_LKUP_RULE_FIELD]
AS
   SELECT
      x.[BRMID],
      x.[RULE_OCC],
      x.[RULE_ITEM_OCC],
      x.[RULE_ITEM_GRIDID],
      x.[RULE_ITEM_GRID_RSLT_ROW],
      x.[RULE_ITEM_GRID_RSLT_COL],
      x.[RULE_ITEM_FIELD_NAME],
      x.[S_RULE_ITEM_OPERATOR],
      x.[RULE_ITEM_FIELDID]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_FIELD] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
