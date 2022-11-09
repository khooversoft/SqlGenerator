-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_BRM_LKUP_RULE_ITEMS]
AS
   SELECT
      x.[BRMID] AS [BRMID],
      x.[RULE_OCC] AS [RULE_OCC],
      x.[RULE_ITEM_OCC] AS [RULE_ITEM_OCC],
      x.[S_RULE_ITEM_TYPE] AS [S_RULE_ITEM_TYPE],
      x.[RULE_ITEM_NAME] AS [RULE_ITEM_NAME],
      x.[PRIORITY] AS [PRIORITY],
      x.[MESSAGE_TEXT] AS [MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL] AS [S_OVERRIDE_LEVEL],
      x.[MESSAGE_TEXT_2] AS [MESSAGE_TEXT_2]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_ITEMS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
