-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_BRM_DEFN_FIELDS]
AS
   SELECT
      x.[FIELDID],
      x.[S_FIELD_STATUS],
      A0.Descript AS [S_FIELD_STATUSDescription],
      x.[FIELD_NAME],
      x.[FIELD_TEXT],
      x.[S_FIELD_CONTROL_TYPE],
      A1.Descript AS [S_FIELD_CONTROL_TYPEDescription],
      x.[S_FIELD_OPERATOR],
      A2.Descript AS [S_FIELD_OPERATORDescription],
      x.[S_FIELD_LIST_SOURCE],
      A3.Descript AS [S_FIELD_LIST_SOURCEDescription],
      x.[S_FIELD_FORMAT],
      A4.Descript AS [S_FIELD_FORMATDescription],
      x.[CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID],
      x.[S_USAGE_TYPE],
      A5.Descript AS [S_USAGE_TYPEDescription]
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
