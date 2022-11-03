-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLBC_TU_RES_GEOCODE]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [ROWCOUNTER]                       smallint             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [GEO_ZIP_CODE]                     nvarchar(9)          NULL,
   [BLOCK_GROUP_STATUS]               nchar(1)             NULL,
   [GEO_STATUS]                       nvarchar(2)          NULL,
   [CENSUS_TRACK_STATUS]              nchar(1)             NULL,
   [SMSA_CODE]                        smallint             NULL,
   [STATE_CODE]                       nchar(2)             NULL,
   [COUNTY_CODE]                      nvarchar(3)          NULL,
   [CENSUS_TRACK_CODE]                nvarchar(4)          NULL,
   [CENSUS_TRACK_SUFFIX]              nvarchar(2)          NULL,
   [BLOCK_CODE]                       nchar(1)             NULL,
   [LATITIUDE]                        nvarchar(8)          NULL,
   [LONGITUDE]                        nvarchar(8)          NULL,
   [ADDRESS_IND]                      nvarchar(15)         NULL,
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
