-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TW_WF_PROC_MODEL_MGR]
AS
   SELECT
      x.[PROC_MDL_MGR_ID],
      x.[S_PROCESS_MODEL],
      A0.Descript AS [S_PROCESS_MODEL_Description],
      x.[S_PROC_MDL_MGR_RESOLUTION],
      A1.Descript AS [S_PROC_MDL_MGR_RESOLUTION_Description],
      x.[EXP_DATE_TO_COMPLETE],
      x.[START_DATE],
      x.[END_DATE],
      x.[LAST_ACTION_DATE],
      x.[IS_COMPLETE],
      x.[RESERVED_BY],
      x.[S_PROC_GROUP],
      A2.Descript AS [S_PROC_GROUP_Description],
      x.[PROC_MGR_ID],
      x.[PARENT_PROC_MDL_MGR_ID]
   FROM [clt_NetO].[GF_TW_WF_PROC_MODEL_MGR] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_PROCESS_MODEL = A0.DBSYMBOL AND A0.[TableName] = 'GF_TW_WF_PROC_MODEL_MGR' and A0.[COLUMNNAME] = 'S_PROCESS_MODEL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_PROC_MDL_MGR_RESOLUTION = A1.DBSYMBOL AND A1.[TableName] = 'GF_TW_WF_PROC_MODEL_MGR' and A1.[COLUMNNAME] = 'S_PROC_MDL_MGR_RESOLUTION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_PROC_GROUP = A2.DBSYMBOL AND A2.[TableName] = 'GF_TW_WF_PROC_MODEL_MGR' and A2.[COLUMNNAME] = 'S_PROC_GROUP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
