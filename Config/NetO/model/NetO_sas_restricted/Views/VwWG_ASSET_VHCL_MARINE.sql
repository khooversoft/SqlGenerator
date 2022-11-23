-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_ASSET_VHCL_MARINE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[S_MARINE_TYPE] AS [S_MARINE_TYPE],
      A0.Descript AS [S_MARINE_TYPE_Description],
      x.[BOAT_NAME] AS [BOAT_NAME],
      x.[NET_WEIGHT] AS [NET_WEIGHT],
      x.[S_PROPULSION_TYPE] AS [S_PROPULSION_TYPE],
      A1.Descript AS [S_PROPULSION_TYPE_Description],
      x.[HAILING_PORT] AS [HAILING_PORT],
      x.[MOORING_ADDR1] AS [MOORING_ADDR1],
      x.[MOORING_ADDR2] AS [MOORING_ADDR2],
      x.[MOORING_CITY] AS [MOORING_CITY],
      x.[MOORING_STATE] AS [MOORING_STATE],
      x.[MOORING_ZIP] AS [MOORING_ZIP],
      x.[TRAILER_ASSETID] AS [TRAILER_ASSETID],
      x.[S_FUEL_TYPE] AS [S_FUEL_TYPE],
      A2.Descript AS [S_FUEL_TYPE_Description],
      x.[BEAM] AS [BEAM],
      x.[MARINE_LENGTH] AS [MARINE_LENGTH],
      x.[S_HULL_MATERIAL] AS [S_HULL_MATERIAL],
      A3.Descript AS [S_HULL_MATERIAL_Description],
      x.[S_PRIMARY_USE] AS [S_PRIMARY_USE],
      A4.Descript AS [S_PRIMARY_USE_Description],
      x.[S_ENGINE_DRIVE] AS [S_ENGINE_DRIVE],
      A5.Descript AS [S_ENGINE_DRIVE_Description],
      x.[IS_DOCUMENTED_VESSEL] AS [IS_DOCUMENTED_VESSEL],
      x.[USCG_OFFICIAL_NUMBER] AS [USCG_OFFICIAL_NUMBER],
      x.[S_MANUF_TYPE] AS [S_MANUF_TYPE],
      A6.Descript AS [S_MANUF_TYPE_Description],
      x.[TOILETATTACHED] AS [TOILETATTACHED],
      x.[MATLOTHDESC] AS [MATLOTHDESC],
      x.[FUELOTHDESC] AS [FUELOTHDESC],
      x.[PROPOTHDESC] AS [PROPOTHDESC],
      x.[MOORING_SLIPNO] AS [MOORING_SLIPNO],
      x.[MOORING_FACILITY] AS [MOORING_FACILITY],
      x.[MOORING_MRENT] AS [MOORING_MRENT]
   FROM [clt_NetO].[WG_ASSET_VHCL_MARINE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_MARINE_TYPE = A0.DBSYMBOL AND A0.[TableName] = 'WG_ASSET_VHCL_MARINE' and A0.[COLUMNNAME] = 'S_MARINE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_PROPULSION_TYPE = A1.DBSYMBOL AND A1.[TableName] = 'WG_ASSET_VHCL_MARINE' and A1.[COLUMNNAME] = 'S_PROPULSION_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_FUEL_TYPE = A2.DBSYMBOL AND A2.[TableName] = 'WG_ASSET_VHCL_MARINE' and A2.[COLUMNNAME] = 'S_FUEL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_HULL_MATERIAL = A3.DBSYMBOL AND A3.[TableName] = 'WG_ASSET_VHCL_MARINE' and A3.[COLUMNNAME] = 'S_HULL_MATERIAL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_PRIMARY_USE = A4.DBSYMBOL AND A4.[TableName] = 'WG_ASSET_VHCL_MARINE' and A4.[COLUMNNAME] = 'S_PRIMARY_USE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_ENGINE_DRIVE = A5.DBSYMBOL AND A5.[TableName] = 'WG_ASSET_VHCL_MARINE' and A5.[COLUMNNAME] = 'S_ENGINE_DRIVE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_MANUF_TYPE = A6.DBSYMBOL AND A6.[TableName] = 'WG_ASSET_VHCL_MARINE' and A6.[COLUMNNAME] = 'S_MANUF_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
