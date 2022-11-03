-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_ASSET_VHCL_MARINE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[S_MARINE_TYPE] AS [S_MARINE_TYPE],
      x.[BOAT_NAME] AS [BOAT_NAME],
      x.[NET_WEIGHT] AS [NET_WEIGHT],
      x.[S_PROPULSION_TYPE] AS [S_PROPULSION_TYPE],
      x.[HAILING_PORT] AS [HAILING_PORT],
      x.[MOORING_ADDR1] AS [MOORING_ADDR1],
      x.[MOORING_ADDR2] AS [MOORING_ADDR2],
      x.[MOORING_CITY] AS [MOORING_CITY],
      x.[MOORING_STATE] AS [MOORING_STATE],
      x.[MOORING_ZIP] AS [MOORING_ZIP],
      x.[TRAILER_ASSETID] AS [TRAILER_ASSETID],
      x.[S_FUEL_TYPE] AS [S_FUEL_TYPE],
      x.[BEAM] AS [BEAM],
      x.[MARINE_LENGTH] AS [MARINE_LENGTH],
      x.[S_HULL_MATERIAL] AS [S_HULL_MATERIAL],
      x.[S_PRIMARY_USE] AS [S_PRIMARY_USE],
      x.[S_ENGINE_DRIVE] AS [S_ENGINE_DRIVE],
      x.[IS_DOCUMENTED_VESSEL] AS [IS_DOCUMENTED_VESSEL],
      x.[USCG_OFFICIAL_NUMBER] AS [USCG_OFFICIAL_NUMBER],
      x.[S_MANUF_TYPE] AS [S_MANUF_TYPE],
      x.[TOILETATTACHED] AS [TOILETATTACHED],
      x.[MATLOTHDESC] AS [MATLOTHDESC],
      x.[FUELOTHDESC] AS [FUELOTHDESC],
      x.[PROPOTHDESC] AS [PROPOTHDESC],
      x.[MOORING_SLIPNO] AS [MOORING_SLIPNO],
      x.[MOORING_FACILITY] AS [MOORING_FACILITY],
      x.[MOORING_MRENT] AS [MOORING_MRENT]
   FROM [clt_NetO].[WG_ASSET_VHCL_MARINE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
