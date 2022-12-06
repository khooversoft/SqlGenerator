-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_BRM_LKUP_BASE]
AS
   SELECT
      x.[BRMID],
      x.[S_USAGE_TYPE],
      A0.Descript AS [USAGE_TYPE],
      x.[LU_BRM_IDENTIFIER],
      x.[S_BRM_STATUS],
      A1.Descript AS [BRM_STATUS],
      x.[S_BRM_TYPE],
      A2.Descript AS [BRM_TYPE],
      x.[BRM_NAME],
      x.[BRM_DESCRIPTION],
      x.[BRM_START_DATE],
      x.[BRM_END_DATE],
      x.[S_CAP_CATEGORY],
      A3.Descript AS [CAP_CATEGORY],
      x.[S_EFFECTIVITY_RULE],
      A4.Descript AS [EFFECTIVITY_RULE],
      x.[CHANGE_EFF_DATE],
      x.[CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID],
      x.[CREATED_DATE],
      x.[CREATED_BY_USER_ID],
      x.[LAST_CHANGE_DATE],
      x.[LAST_CHANGE_USER_ID],
      x.[MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL],
      A5.Descript AS [OVERRIDE_LEVEL],
      x.[BRM_CATEGORY]
   FROM [clt_NetO].[WG_BRM_LKUP_BASE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_USAGE_TYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_LKUP_BASE' and A0.[COLUMNNAME] = 'S_USAGE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_BRM_STATUS = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_BRM_LKUP_BASE' and A1.[COLUMNNAME] = 'S_BRM_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_BRM_TYPE = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_BRM_LKUP_BASE' and A2.[COLUMNNAME] = 'S_BRM_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_CAP_CATEGORY = A3.[DBSYMBOL] AND A3.[TableName] = 'WG_BRM_LKUP_BASE' and A3.[COLUMNNAME] = 'S_CAP_CATEGORY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_EFFECTIVITY_RULE = A4.[DBSYMBOL] AND A4.[TableName] = 'WG_BRM_LKUP_BASE' and A4.[COLUMNNAME] = 'S_EFFECTIVITY_RULE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_OVERRIDE_LEVEL = A5.[DBSYMBOL] AND A5.[TableName] = 'WG_BRM_LKUP_BASE' and A5.[COLUMNNAME] = 'S_OVERRIDE_LEVEL'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
