-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_BRM_LKUP_RULE_BASE]
AS
   SELECT
      x.[BRMID] AS [BRMID],
      x.[RULE_OCC] AS [RULE_OCC],
      x.[RULE_DESCRIPTION] AS [RULE_DESCRIPTION],
      x.[PRIORITY] AS [PRIORITY],
      x.[MESSAGE_TEXT] AS [MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL] AS [S_OVERRIDE_LEVEL],
      A0.Descript AS [OVERRIDE_LEVEL]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_BASE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_OVERRIDE_LEVEL = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_LKUP_RULE_BASE' and A0.[COLUMNNAME] = 'S_OVERRIDE_LEVEL'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
