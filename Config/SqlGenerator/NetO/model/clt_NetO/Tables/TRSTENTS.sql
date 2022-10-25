-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[TRSTENTS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [TRUSTNO]                          int                  NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [COUNTER]                          smallint             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [TRFLAG]                           nchar(1)             NULL,
   [FTRNAME]                          nvarchar(50)         NULL,
   [LTRNAME]                          nvarchar(30)         NULL,
   [TRSTTYPE]                         nchar(1)             NULL,
   [TRSTINST]                         nvarchar(40)         NULL,
   [MTRNAME]                          nvarchar(30)         NULL,
   [TRNAME_SUFFIX]                    nvarchar(5)          NULL,
   [POAFLAG]                          nchar(1)             NULL,
   [POA]                              nvarchar(116)        NULL,
   [ADDR]                             nvarchar(35)         NULL,
   [CITY]                             nvarchar(35)         NULL,
   [STATE]                            nchar(2)             NULL,
   [ZIP]                              nvarchar(10)         NULL,
   [AUTHORIZED_SIGNEE]                nchar(1)             NULL,
   [TRSTTL]                           nvarchar(30)         NULL,
   [TRUSTPHONE]                       nvarchar(14)         NULL,
   [TRUST_FOREIGN_ADDRESS]            nchar(1)             NULL,
   [TRUST_FOREIGN_COUNTRY]            nvarchar(35)         NULL,
   [TRUST_STREET_ADDR2]               nvarchar(35)         NULL,
   [EMAIL]                            nvarchar(128)        NULL,
   [S_TRUST_UNIT_TYPE]                nvarchar(8)          NULL,
   [TRUST_UNIT_NUM]                   nvarchar(12)         NULL,
   [TRUST_COUNTRY_CODE]               nvarchar(2)          NULL,
   [LIVING_TRUST_BNUM]                smallint             NULL,
   [TRST_STATE_FOR]                   nvarchar(35)         NULL,
   [TRST_POSTCODE]                    nvarchar(15)         NULL,
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
