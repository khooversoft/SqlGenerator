-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_BRM_LKUP_RULE_BASE]
AS
   SELECT
      x.[BRMID],
      x.[RULE_OCC],
      x.[RULE_DESCRIPTION],
      x.[PRIORITY],
      x.[MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_BASE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
