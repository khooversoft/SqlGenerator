-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_ASSET_VHCL_MARINE]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[S_MARINE_TYPE],
      A0.Descript AS [S_MARINE_TYPE_Description],
      x.[BOAT_NAME],
      x.[NET_WEIGHT],
      x.[S_PROPULSION_TYPE],
      A1.Descript AS [S_PROPULSION_TYPE_Description],
      x.[HAILING_PORT],
      x.[MOORING_ADDR1],
      x.[MOORING_ADDR2],
      x.[MOORING_CITY],
      x.[MOORING_STATE],
      x.[MOORING_ZIP],
      x.[TRAILER_ASSETID],
      x.[S_FUEL_TYPE],
      A2.Descript AS [S_FUEL_TYPE_Description],
      x.[BEAM],
      x.[MARINE_LENGTH],
      x.[S_HULL_MATERIAL],
      A3.Descript AS [S_HULL_MATERIAL_Description],
      x.[S_PRIMARY_USE],
      A4.Descript AS [S_PRIMARY_USE_Description],
      x.[S_ENGINE_DRIVE],
      A5.Descript AS [S_ENGINE_DRIVE_Description],
      x.[IS_DOCUMENTED_VESSEL],
      x.[USCG_OFFICIAL_NUMBER],
      x.[S_MANUF_TYPE],
      A6.Descript AS [S_MANUF_TYPE_Description],
      x.[TOILETATTACHED],
      x.[MATLOTHDESC],
      x.[FUELOTHDESC],
      x.[PROPOTHDESC],
      x.[MOORING_SLIPNO],
      x.[MOORING_FACILITY],
      x.[MOORING_MRENT]
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
