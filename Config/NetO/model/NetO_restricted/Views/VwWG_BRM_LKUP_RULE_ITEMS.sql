-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_BRM_LKUP_RULE_ITEMS]
AS
   SELECT
      x.[BRMID],
      x.[RULE_OCC],
      x.[RULE_ITEM_OCC],
      x.[S_RULE_ITEM_TYPE],
      x.[RULE_ITEM_NAME],
      x.[PRIORITY],
      x.[MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL],
      x.[MESSAGE_TEXT_2]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_ITEMS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
