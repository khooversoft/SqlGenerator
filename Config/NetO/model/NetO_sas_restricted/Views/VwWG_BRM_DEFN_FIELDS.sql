-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_BRM_DEFN_FIELDS]
AS
   SELECT
      x.[FIELDID] AS [FIELDID],
      x.[S_FIELD_STATUS] AS [S_FIELD_STATUS],
      A0.Descript AS [FIELD_STATUS],
      x.[FIELD_NAME] AS [FIELD_NAME],
      x.[FIELD_TEXT] AS [FIELD_TEXT],
      x.[S_FIELD_CONTROL_TYPE] AS [S_FIELD_CONTROL_TYPE],
      A1.Descript AS [FIELD_CONTROL_TYPE],
      x.[S_FIELD_OPERATOR] AS [S_FIELD_OPERATOR],
      A2.Descript AS [FIELD_OPERATOR],
      x.[S_FIELD_LIST_SOURCE] AS [S_FIELD_LIST_SOURCE],
      A3.Descript AS [FIELD_LIST_SOURCE],
      x.[S_FIELD_FORMAT] AS [S_FIELD_FORMAT],
      A4.Descript AS [FIELD_FORMAT],
      x.[CURRENT_USER_DATETIME] AS [CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID] AS [CURRENT_USER_ID],
      x.[S_USAGE_TYPE] AS [S_USAGE_TYPE],
      A5.Descript AS [USAGE_TYPE]
   FROM [clt_NetO].[WG_BRM_DEFN_FIELDS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_FIELD_STATUS = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_DEFN_FIELDS' and A0.[COLUMNNAME] = 'S_FIELD_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_FIELD_CONTROL_TYPE = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_BRM_DEFN_FIELDS' and A1.[COLUMNNAME] = 'S_FIELD_CONTROL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_FIELD_OPERATOR = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_BRM_DEFN_FIELDS' and A2.[COLUMNNAME] = 'S_FIELD_OPERATOR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_FIELD_LIST_SOURCE = A3.[DBSYMBOL] AND A3.[TableName] = 'WG_BRM_DEFN_FIELDS' and A3.[COLUMNNAME] = 'S_FIELD_LIST_SOURCE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_FIELD_FORMAT = A4.[DBSYMBOL] AND A4.[TableName] = 'WG_BRM_DEFN_FIELDS' and A4.[COLUMNNAME] = 'S_FIELD_FORMAT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_USAGE_TYPE = A5.[DBSYMBOL] AND A5.[TableName] = 'WG_BRM_DEFN_FIELDS' and A5.[COLUMNNAME] = 'S_USAGE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
