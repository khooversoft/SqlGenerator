-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_BRM_LKUP_BASE]
AS
   SELECT
      x.[BRMID] AS [BRMID],
      x.[S_USAGE_TYPE] AS [S_USAGE_TYPE],
      A0.[Descript] AS [S_USAGE_TYPE_X],
      x.[LU_BRM_IDENTIFIER] AS [LU_BRM_IDENTIFIER],
      x.[S_BRM_STATUS] AS [S_BRM_STATUS],
      A1.[Descript] AS [S_BRM_STATUS_X],
      x.[S_BRM_TYPE] AS [S_BRM_TYPE],
      A2.[Descript] AS [S_BRM_TYPE_X],
      HASHBYTES('SHA2_256', x.[BRM_NAME]) AS [BRM_NAME],
      x.[BRM_DESCRIPTION] AS [BRM_DESCRIPTION],
      x.[BRM_START_DATE] AS [BRM_START_DATE],
      x.[BRM_END_DATE] AS [BRM_END_DATE],
      x.[S_CAP_CATEGORY] AS [S_CAP_CATEGORY],
      A3.[Descript] AS [S_CAP_CATEGORY_X],
      x.[S_EFFECTIVITY_RULE] AS [S_EFFECTIVITY_RULE],
      A4.[Descript] AS [S_EFFECTIVITY_RULE_X],
      x.[CHANGE_EFF_DATE] AS [CHANGE_EFF_DATE],
      x.[CURRENT_USER_DATETIME] AS [CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID] AS [CURRENT_USER_ID],
      x.[CREATED_DATE] AS [CREATED_DATE],
      x.[CREATED_BY_USER_ID] AS [CREATED_BY_USER_ID],
      x.[LAST_CHANGE_DATE] AS [LAST_CHANGE_DATE],
      x.[LAST_CHANGE_USER_ID] AS [LAST_CHANGE_USER_ID],
      HASHBYTES('SHA2_256', x.[MESSAGE_TEXT]) AS [MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL] AS [S_OVERRIDE_LEVEL],
      A5.[Descript] AS [S_OVERRIDE_LEVEL_X],
      x.[BRM_CATEGORY] AS [BRM_CATEGORY]
   FROM [clt_NetO].[WG_BRM_LKUP_BASE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_USAGE_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_LKUP_BASE' and A0.[COLUMNNAME] = 'S_USAGE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_BRM_STATUS] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_BRM_LKUP_BASE' and A1.[COLUMNNAME] = 'S_BRM_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_BRM_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_BRM_LKUP_BASE' and A2.[COLUMNNAME] = 'S_BRM_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_CAP_CATEGORY] = A3.[DBSYMBOL] AND A3.[TableName] = 'WG_BRM_LKUP_BASE' and A3.[COLUMNNAME] = 'S_CAP_CATEGORY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_EFFECTIVITY_RULE] = A4.[DBSYMBOL] AND A4.[TableName] = 'WG_BRM_LKUP_BASE' and A4.[COLUMNNAME] = 'S_EFFECTIVITY_RULE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_OVERRIDE_LEVEL] = A5.[DBSYMBOL] AND A5.[TableName] = 'WG_BRM_LKUP_BASE' and A5.[COLUMNNAME] = 'S_OVERRIDE_LEVEL'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
