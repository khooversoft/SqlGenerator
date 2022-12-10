-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_ASSET_MARINE_ENG]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[ROWCOUNTER],
      x.[NEW_YN],
      x.[ENGINE_ID],
      x.[ENGINE_YEAR],
      x.[ENGINE_MAKE],
      x.[ENGINE_MODEL],
      x.[HORSEPOWER],
      x.[CYLINDERS],
      x.[POWER_TILT_YN],
      x.[ENGINE_VALUE],
      x.[HOURS],
      x.[ENGINE_TITLE_NUM],
      x.[ENGINE_MODEL_NUM],
      x.[S_ENGINE_MFG],
      A0.[Descript] AS [S_ENGINE_MFG_X],
      x.[S_MULTIENGINETYPE],
      A1.[Descript] AS [S_MULTIENGINETYPE_X],
      x.[S_ENGINE_COLOR],
      A2.[Descript] AS [S_ENGINE_COLOR_X]
   FROM [clt_NetO].[WG_ASSET_MARINE_ENG] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_ENGINE_MFG] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_MARINE_ENG' and A0.[COLUMNNAME] = 'S_ENGINE_MFG'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_MULTIENGINETYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_ASSET_MARINE_ENG' and A1.[COLUMNNAME] = 'S_MULTIENGINETYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_ENGINE_COLOR] = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_ASSET_MARINE_ENG' and A2.[COLUMNNAME] = 'S_ENGINE_COLOR'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
