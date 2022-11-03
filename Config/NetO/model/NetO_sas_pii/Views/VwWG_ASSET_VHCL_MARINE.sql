-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_ASSET_VHCL_MARINE]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[S_MARINE_TYPE],
      x.[BOAT_NAME],
      x.[NET_WEIGHT],
      x.[S_PROPULSION_TYPE],
      x.[HAILING_PORT],
      x.[MOORING_ADDR1],
      x.[MOORING_ADDR2],
      x.[MOORING_CITY],
      x.[MOORING_STATE],
      x.[MOORING_ZIP],
      x.[TRAILER_ASSETID],
      x.[S_FUEL_TYPE],
      x.[BEAM],
      x.[MARINE_LENGTH],
      x.[S_HULL_MATERIAL],
      x.[S_PRIMARY_USE],
      x.[S_ENGINE_DRIVE],
      x.[IS_DOCUMENTED_VESSEL],
      x.[USCG_OFFICIAL_NUMBER],
      x.[S_MANUF_TYPE],
      x.[TOILETATTACHED],
      x.[MATLOTHDESC],
      x.[FUELOTHDESC],
      x.[PROPOTHDESC],
      x.[MOORING_SLIPNO],
      x.[MOORING_FACILITY],
      x.[MOORING_MRENT]
   FROM [clt_NetO].[WG_ASSET_VHCL_MARINE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
