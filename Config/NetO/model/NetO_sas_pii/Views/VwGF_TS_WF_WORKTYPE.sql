-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TS_WF_WORKTYPE]
AS
   SELECT
      x.[S_WORKTYPE] AS [S_WORKTYPE],
      A0.Descript AS [S_WORKTYPE_Description],
      x.[S_WT_TYPE] AS [S_WT_TYPE],
      A1.Descript AS [S_WT_TYPE_Description],
      x.[WT_EXECUTABLE] AS [WT_EXECUTABLE],
      x.[EST_TO_COMPLETE] AS [EST_TO_COMPLETE],
      x.[S_USERINTERFACE] AS [S_USERINTERFACE],
      A2.Descript AS [S_USERINTERFACE_Description],
      x.[S_REASSIGN_RULE] AS [S_REASSIGN_RULE],
      A3.Descript AS [S_REASSIGN_RULE_Description],
      x.[WEIGHT_TIER1] AS [WEIGHT_TIER1],
      x.[WEIGHT_TIER2] AS [WEIGHT_TIER2],
      x.[WEIGHT_TIER3] AS [WEIGHT_TIER3],
      x.[DISPLAY_IDX] AS [DISPLAY_IDX]
   FROM [clt_NetO].[GF_TS_WF_WORKTYPE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_WORKTYPE = A0.DBSYMBOL AND A0.[TableName] = 'GF_TS_WF_WORKTYPE' and A0.[COLUMNNAME] = 'S_WORKTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_WT_TYPE = A1.DBSYMBOL AND A1.[TableName] = 'GF_TS_WF_WORKTYPE' and A1.[COLUMNNAME] = 'S_WT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_USERINTERFACE = A2.DBSYMBOL AND A2.[TableName] = 'GF_TS_WF_WORKTYPE' and A2.[COLUMNNAME] = 'S_USERINTERFACE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_REASSIGN_RULE = A3.DBSYMBOL AND A3.[TableName] = 'GF_TS_WF_WORKTYPE' and A3.[COLUMNNAME] = 'S_REASSIGN_RULE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
