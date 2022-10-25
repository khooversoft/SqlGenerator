-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_BRM_LKUP_RULE_DETAIL]
AS
   SELECT
      x.[BRMID],
      x.[RULE_OCC],
      x.[RULE_ITEM_OCC],
      x.[RULE_ITEM_GRIDID],
      x.[RULE_ITEM_GRID_RSLT_ROW],
      x.[RULE_ITEM_GRID_RSLT_COL],
      x.[RULE_ITEM_FIELD_NAME],
      x.[RULE_DETAIL_OCC],
      x.[RULE_ITEM_PAIR_AB],
      x.[RULE_ITEM_TARGET_VALUE],
      x.[BRM_START_DATE],
      x.[BRM_END_DATE]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_DETAIL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
