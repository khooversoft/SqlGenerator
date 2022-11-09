-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_BRM_LKUP_RULE_BASE]
AS
   SELECT
      x.[BRMID] AS [BRMID],
      x.[RULE_OCC] AS [RULE_OCC],
      x.[RULE_DESCRIPTION] AS [RULE_DESCRIPTION],
      x.[PRIORITY] AS [PRIORITY],
      x.[MESSAGE_TEXT] AS [MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL] AS [S_OVERRIDE_LEVEL]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_BASE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
