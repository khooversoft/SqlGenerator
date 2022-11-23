-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_ASSET_MARINE_ENG]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[ROWCOUNTER] AS [ROWCOUNTER],
      x.[NEW_YN] AS [NEW_YN],
      x.[ENGINE_ID] AS [ENGINE_ID],
      x.[ENGINE_YEAR] AS [ENGINE_YEAR],
      x.[ENGINE_MAKE] AS [ENGINE_MAKE],
      x.[ENGINE_MODEL] AS [ENGINE_MODEL],
      x.[HORSEPOWER] AS [HORSEPOWER],
      x.[CYLINDERS] AS [CYLINDERS],
      x.[POWER_TILT_YN] AS [POWER_TILT_YN],
      x.[ENGINE_VALUE] AS [ENGINE_VALUE],
      x.[HOURS] AS [HOURS],
      x.[ENGINE_TITLE_NUM] AS [ENGINE_TITLE_NUM],
      x.[ENGINE_MODEL_NUM] AS [ENGINE_MODEL_NUM],
      x.[S_ENGINE_MFG] AS [S_ENGINE_MFG],
      A0.Descript AS [S_ENGINE_MFG_Description],
      x.[S_MULTIENGINETYPE] AS [S_MULTIENGINETYPE],
      A1.Descript AS [S_MULTIENGINETYPE_Description],
      x.[S_ENGINE_COLOR] AS [S_ENGINE_COLOR],
      A2.Descript AS [S_ENGINE_COLOR_Description]
   FROM [clt_NetO].[WG_ASSET_MARINE_ENG] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_ENGINE_MFG = A0.DBSYMBOL AND A0.[TableName] = 'WG_ASSET_MARINE_ENG' and A0.[COLUMNNAME] = 'S_ENGINE_MFG'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_MULTIENGINETYPE = A1.DBSYMBOL AND A1.[TableName] = 'WG_ASSET_MARINE_ENG' and A1.[COLUMNNAME] = 'S_MULTIENGINETYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_ENGINE_COLOR = A2.DBSYMBOL AND A2.[TableName] = 'WG_ASSET_MARINE_ENG' and A2.[COLUMNNAME] = 'S_ENGINE_COLOR'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
