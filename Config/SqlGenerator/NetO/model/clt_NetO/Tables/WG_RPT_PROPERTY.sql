-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_RPT_PROPERTY]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [CENSUS_TRACT]                     nvarchar(8)          NULL,
   [COUNTY_CODE]                      nchar(3)             NULL,
   [MSA_CODE]                         nvarchar(6)          NULL,
   [PROJECT_CLASS]                    nvarchar(128)        NULL,
   [PROJECT_NAME]                     nvarchar(80)         NULL,
   [PROP_ADDR1]                       nvarchar(55)         NULL,
   [PROP_ADDR2]                       nvarchar(55)         NULL,
   [PROP_CITY]                        nvarchar(25)         NULL,
   [PROP_COUNTY]                      nvarchar(35)         NULL,
   [PROP_STATE]                       nchar(2)             NULL,
   [PROP_ZIP]                         nvarchar(10)         NULL,
   [PROPERTY_TYPE]                    nvarchar(128)        NULL,
   [PROPERTY_TYPE_DESC]               nvarchar(256)        NULL,
   [STATE_CODE]                       nchar(2)             NULL,
   [YEAR_BUILT]                       smallint             NULL,
   [NUMBER_OF_UNITS]                  smallint             NULL,
   [PROP_COUNTRY]                     nvarchar(35)         NULL,
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
