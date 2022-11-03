-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TS_CMS_CONTACT_ADDRESS]
(
   [CID]                              int                  NOT NULL,
   [ROWSERIALNO]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_ADDRTYPE]                       nvarchar(8)          NULL,
   [ADDR1]                            nvarchar(35)         NULL,
   [ADDR2]                            nvarchar(35)         NULL,
   [CITY]                             nvarchar(35)         NULL,
   [COUNTY]                           nvarchar(35)         NULL,
   [STATE]                            nchar(2)             NULL,
   [COUNTRY]                          nvarchar(35)         NULL,
   [ZIP]                              nvarchar(10)         NULL,
   [TIMEZONE]                         nchar(3)             NULL,
   [S_CMSADR_UNIT_TYPE]               nvarchar(8)          NULL,
   [CMSADR_UNIT_NUM]                  nvarchar(12)         NULL,
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
WITH (DISTRIBUTION = HASH ([CID]), CLUSTERED COLUMNSTORE INDEX)
;
