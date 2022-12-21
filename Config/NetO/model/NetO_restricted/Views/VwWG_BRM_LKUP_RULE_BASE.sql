-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_BRM_LKUP_RULE_BASE]
AS
   SELECT
      x.[BRMID],
      x.[RULE_OCC],
      x.[RULE_DESCRIPTION],
      x.[PRIORITY],
      HASHBYTES('SHA2_256', x.[MESSAGE_TEXT]) AS [MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL],
      A0.[Descript] AS [S_OVERRIDE_LEVEL_X]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_BASE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_OVERRIDE_LEVEL] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_LKUP_RULE_BASE' and A0.[COLUMNNAME] = 'S_OVERRIDE_LEVEL'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
