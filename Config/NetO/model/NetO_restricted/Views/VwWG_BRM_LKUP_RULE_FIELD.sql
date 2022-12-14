-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_BRM_LKUP_RULE_FIELD]
AS
   SELECT
      x.[BRMID],
      x.[RULE_OCC],
      x.[RULE_ITEM_OCC],
      x.[RULE_ITEM_GRIDID],
      x.[RULE_ITEM_GRID_RSLT_ROW],
      x.[RULE_ITEM_GRID_RSLT_COL],
      x.[RULE_ITEM_FIELD_NAME],
      x.[S_RULE_ITEM_OPERATOR],
      A0.[Descript] AS [S_RULE_ITEM_OPERATOR_X],
      x.[RULE_ITEM_FIELDID]
   FROM [clt_NetO].[WG_BRM_LKUP_RULE_FIELD] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_RULE_ITEM_OPERATOR] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_LKUP_RULE_FIELD' and A0.[COLUMNNAME] = 'S_RULE_ITEM_OPERATOR'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
