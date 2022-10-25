-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_COLLATERAL_ADDRESS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASSETID]                          int                  NOT NULL,
   [ROWSERIALNO]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [COLLATERALADD1]                   nvarchar(100)        NULL,
   [COLLATERALADD2]                   nvarchar(100)        NULL,
   [COLLATERALCITY]                   nvarchar(25)         NULL,
   [COLLATERALSTATE]                  nvarchar(2)          NULL,
   [COLLATERALCOUNTY]                 nvarchar(35)         NULL,
   [COLLATERALZIP]                    nvarchar(10)         NULL,
   [COLLATERALCOUNTRY]                nvarchar(35)         NULL,
   [LANDLORD_PARKNAME]                nvarchar(200)        NULL,
   [PARK_LORTENT]                     numeric(16,6)        NULL,
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
