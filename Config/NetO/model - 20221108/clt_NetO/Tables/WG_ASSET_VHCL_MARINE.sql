-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_ASSET_VHCL_MARINE]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASSETID]                          int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_MARINE_TYPE]                    nvarchar(8)          NULL,
   [BOAT_NAME]                        nvarchar(64)         NULL,
   [NET_WEIGHT]                       int                  NULL,
   [S_PROPULSION_TYPE]                nvarchar(8)          NULL,
   [HAILING_PORT]                     nvarchar(128)        NULL,
   [MOORING_ADDR1]                    nvarchar(55)         NULL,
   [MOORING_ADDR2]                    nvarchar(55)         NULL,
   [MOORING_CITY]                     nvarchar(55)         NULL,
   [MOORING_STATE]                    nchar(2)             NULL,
   [MOORING_ZIP]                      nvarchar(5)          NULL,
   [TRAILER_ASSETID]                  int                  NULL,
   [S_FUEL_TYPE]                      nvarchar(8)          NULL,
   [BEAM]                             numeric(16,6)        NULL,
   [MARINE_LENGTH]                    numeric(16,6)        NULL,
   [S_HULL_MATERIAL]                  nvarchar(8)          NULL,
   [S_PRIMARY_USE]                    nvarchar(8)          NULL,
   [S_ENGINE_DRIVE]                   nvarchar(8)          NULL,
   [IS_DOCUMENTED_VESSEL]             nchar(1)             NULL,
   [USCG_OFFICIAL_NUMBER]             nvarchar(33)         NULL,
   [S_MANUF_TYPE]                     nvarchar(8)          NULL,
   [TOILETATTACHED]                   nchar(1)             NULL,
   [MATLOTHDESC]                      nvarchar(64)         NULL,
   [FUELOTHDESC]                      nvarchar(64)         NULL,
   [PROPOTHDESC]                      nvarchar(64)         NULL,
   [MOORING_SLIPNO]                   nvarchar(100)        NULL,
   [MOORING_FACILITY]                 nvarchar(100)        NULL,
   [MOORING_MRENT]                    numeric(18,3)        NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]               datetime2(7)         NULL,
   [ASAP_SRC_NAME]                    nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([LNUM]), CLUSTERED COLUMNSTORE INDEX)
;
