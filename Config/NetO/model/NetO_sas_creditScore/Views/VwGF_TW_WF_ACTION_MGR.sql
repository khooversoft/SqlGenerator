-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwGF_TW_WF_ACTION_MGR]
AS
   SELECT
      x.[ACTION_ID] AS [ACTION_ID],
      x.[S_WORKTYPE] AS [S_WORKTYPE],
      A0.[Descript] AS [S_WORKTYPE_X],
      x.[S_ACTION_RESOLUTION] AS [S_ACTION_RESOLUTION],
      A1.[Descript] AS [S_ACTION_RESOLUTION_X],
      x.[S_PROC_MDL_RESOLUTION] AS [S_PROC_MDL_RESOLUTION],
      A2.[Descript] AS [S_PROC_MDL_RESOLUTION_X],
      x.[EXTERNAL_CODE] AS [EXTERNAL_CODE],
      x.[INSERT_DATE] AS [INSERT_DATE],
      x.[EXP_DATE_TO_COMPLETE] AS [EXP_DATE_TO_COMPLETE],
      HASHBYTES('SHA2_256', CAST(x.[START_DATE] AS NVARCHAR(50))) AS [START_DATE],
      x.[END_DATE] AS [END_DATE],
      x.[LAST_ACTION_DATE] AS [LAST_ACTION_DATE],
      x.[IS_BEING_WORKED] AS [IS_BEING_WORKED],
      x.[ACTION_STATUS_FLAG] AS [ACTION_STATUS_FLAG],
      x.[RESERVED_BY] AS [RESERVED_BY],
      x.[S_PROC_GROUP] AS [S_PROC_GROUP],
      A3.[Descript] AS [S_PROC_GROUP_X],
      x.[PROC_MDL_MGR_ID] AS [PROC_MDL_MGR_ID],
      x.[RESERVE_DATE] AS [RESERVE_DATE],
      x.[WF_SESSION_ID] AS [WF_SESSION_ID],
      x.[OPENED_DATE] AS [OPENED_DATE]
   FROM [clt_NetO].[GF_TW_WF_ACTION_MGR] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_WORKTYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TW_WF_ACTION_MGR' and A0.[COLUMNNAME] = 'S_WORKTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_ACTION_RESOLUTION] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TW_WF_ACTION_MGR' and A1.[COLUMNNAME] = 'S_ACTION_RESOLUTION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_PROC_MDL_RESOLUTION] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TW_WF_ACTION_MGR' and A2.[COLUMNNAME] = 'S_PROC_MDL_RESOLUTION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_PROC_GROUP] = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TW_WF_ACTION_MGR' and A3.[COLUMNNAME] = 'S_PROC_GROUP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
