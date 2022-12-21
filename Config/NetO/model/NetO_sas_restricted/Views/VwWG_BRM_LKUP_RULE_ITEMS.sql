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
      A0.[Descript] AS [S_RULE_ITEM_TYPE_X],
      x.[RULE_ITEM_NAME] AS [RULE_ITEM_NAME],
      x.[PRIORITY] AS [PRIORITY],
      HASHBYTES('SHA2_256', x.[MESSAGE_TEXT]) AS [MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL] AS [S_OVERRIDE_LEVEL],
      A1.[Descript] AS [S_OVERRIDE_LEVEL_X],
      HASHBYTES('SHA2_256', x.[MESSAGE_TEXT_2]) AS [MESSAGE_TEXT_2]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_ITEMS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_RULE_ITEM_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_LKUP_RULE_ITEMS' and A0.[COLUMNNAME] = 'S_RULE_ITEM_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_OVERRIDE_LEVEL] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_BRM_LKUP_RULE_ITEMS' and A1.[COLUMNNAME] = 'S_OVERRIDE_LEVEL'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
