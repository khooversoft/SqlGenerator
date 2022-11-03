-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_BRM_LKUP_RULE_VALUE]
AS
   SELECT
      x.[BRMID],
      x.[RULE_OCC],
      x.[RULE_ITEM_OCC],
      x.[RULE_ITEM_GRIDID],
      x.[RULE_ITEM_GRID_RSLT_ROW],
      x.[RULE_ITEM_GRID_RSLT_COL],
      x.[RULE_VALUE_OCC],
      x.[BRM_START_DATE],
      x.[BRM_END_DATE],
      x.[BRM_VALUE]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_VALUE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
