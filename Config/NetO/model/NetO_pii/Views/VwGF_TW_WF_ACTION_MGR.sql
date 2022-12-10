-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TW_WF_ACTION_MGR]
AS
   SELECT
      x.[ACTION_ID],
      x.[S_WORKTYPE],
      A0.[Descript] AS [S_WORKTYPE_X],
      x.[S_ACTION_RESOLUTION],
      A1.[Descript] AS [S_ACTION_RESOLUTION_X],
      x.[S_PROC_MDL_RESOLUTION],
      A2.[Descript] AS [S_PROC_MDL_RESOLUTION_X],
      x.[EXTERNAL_CODE],
      x.[INSERT_DATE],
      x.[EXP_DATE_TO_COMPLETE],
      x.[START_DATE],
      x.[END_DATE],
      x.[LAST_ACTION_DATE],
      x.[IS_BEING_WORKED],
      x.[ACTION_STATUS_FLAG],
      x.[RESERVED_BY],
      x.[S_PROC_GROUP],
      A3.[Descript] AS [S_PROC_GROUP_X],
      x.[PROC_MDL_MGR_ID],
      x.[RESERVE_DATE],
      x.[WF_SESSION_ID],
      x.[OPENED_DATE]
   FROM [clt_NetO].[GF_TW_WF_ACTION_MGR] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_WORKTYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TW_WF_ACTION_MGR' and A0.[COLUMNNAME] = 'S_WORKTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_ACTION_RESOLUTION] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TW_WF_ACTION_MGR' and A1.[COLUMNNAME] = 'S_ACTION_RESOLUTION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_PROC_MDL_RESOLUTION] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TW_WF_ACTION_MGR' and A2.[COLUMNNAME] = 'S_PROC_MDL_RESOLUTION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_PROC_GROUP] = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TW_WF_ACTION_MGR' and A3.[COLUMNNAME] = 'S_PROC_GROUP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
