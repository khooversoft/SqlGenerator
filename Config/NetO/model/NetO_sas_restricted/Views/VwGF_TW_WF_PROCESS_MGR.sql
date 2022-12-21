-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TW_WF_PROCESS_MGR]
AS
   SELECT
      x.[PROC_MGR_ID] AS [PROC_MGR_ID],
      x.[S_PROCESS] AS [S_PROCESS],
      A0.[Descript] AS [S_PROCESS_X],
      x.[EXTERNAL_CODE] AS [EXTERNAL_CODE],
      x.[EXT_CODE_DESC] AS [EXT_CODE_DESC],
      x.[EXP_COMP_DATE] AS [EXP_COMP_DATE],
      HASHBYTES('SHA2_256', CAST(x.[START_DATE] AS NVARCHAR(50))) AS [START_DATE],
      x.[END_DATE] AS [END_DATE],
      x.[LAST_ACTION_DATE] AS [LAST_ACTION_DATE],
      x.[MODELS_STARTED] AS [MODELS_STARTED],
      x.[MODELS_COMPLETED] AS [MODELS_COMPLETED],
      x.[IS_COMPLETE] AS [IS_COMPLETE],
      x.[RESERVED_BY] AS [RESERVED_BY],
      x.[S_PROC_GROUP] AS [S_PROC_GROUP],
      A1.[Descript] AS [S_PROC_GROUP_X]
   FROM [clt_NetO].[GF_TW_WF_PROCESS_MGR] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_PROCESS] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TW_WF_PROCESS_MGR' and A0.[COLUMNNAME] = 'S_PROCESS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_PROC_GROUP] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TW_WF_PROCESS_MGR' and A1.[COLUMNNAME] = 'S_PROC_GROUP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
