-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLB_MAILING]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [MAILADDR1]                        nvarchar(100)        NULL,
   [MAILADDR2]                        nvarchar(100)        NULL,
   [MAILCITY]                         nvarchar(25)         NULL,
   [MAILSTATE]                        nchar(2)             NULL,
   [MAILCNTY]                         nvarchar(35)         NULL,
   [MAILZIP]                          nvarchar(10)         NULL,
   [MAILCOUNTRY]                      nvarchar(35)         NULL,
   [MAIL_FADDR_INDICATOR]             nchar(1)             NULL,
   [S_MAIL_UNIT_TYPE]                 nvarchar(8)          NULL,
   [MAIL_UNIT_NUM]                    nvarchar(12)         NULL,
   [MAIL_COUNTRY_CODE]                nvarchar(3)          NULL,
   [BOR_MAIL_STATE_FOREIN]            nvarchar(35)         NULL,
   [MAIL_POST_CODE_FOREIN]            nvarchar(12)         NULL,
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
