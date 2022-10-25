-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_CRM_CUSTOMER_ADDRESS]
(
   [CUSTOMER_ID]                      nvarchar(50)         NOT NULL,
   [ADDRESS_TYPE]                     nvarchar(8)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ADDR_LINE1]                       nvarchar(100)        NULL,
   [ADDR_LINE2]                       nvarchar(100)        NULL,
   [ADDR_LINE3]                       nvarchar(100)        NULL,
   [ADDR_CITY]                        nvarchar(25)         NULL,
   [ADDR_STATE]                       nchar(2)             NULL,
   [ADDR_ZIP]                         nvarchar(10)         NULL,
   [ADDR_COUNTY]                      nvarchar(35)         NULL,
   [ADDR_COUNTRY]                     nvarchar(35)         NULL,
   [ADDR_COUNTYCODE]                  nchar(2)             NULL,
   [ADDR_UNIT]                        nvarchar(25)         NULL,
   [ADDR_PFX]                         nvarchar(25)         NULL,
   [ADDR_SUFFIX]                      nvarchar(25)         NULL,
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
WITH (DISTRIBUTION = HASH ([CUSTOMER_ID]), CLUSTERED COLUMNSTORE INDEX)
;
