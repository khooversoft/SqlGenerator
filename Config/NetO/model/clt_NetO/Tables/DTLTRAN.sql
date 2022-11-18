-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[DTLTRAN]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [TRANCTR]                          smallint             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_TRAN]                           nvarchar(8)          NULL,
   [TRANDESC]                         nvarchar(30)         NULL,
   [TRANAMT]                          decimal(18,3)        NULL,
   [OTHERAMT]                         decimal(16,6)        NULL,
   [S_PURCH_CREDIT_TYPE]              nvarchar(8)          NULL,
   [S_PURCH_SOURCE_TYPE]              nvarchar(8)          NULL,
   [OTHERPURCHCREDTYPEDESC]           nvarchar(80)         NULL,
   [OTHERPURCHSRCTYPEDESC]            nvarchar(80)         NULL,
   [MANUALAMT]                        numeric(16,6)        NULL,
   [FEEAMT]                           numeric(16,6)        NULL,
   [RECORD_CREATED]                   nvarchar(35)         NULL,
   [USE_BY_SYSTEM]                    nchar(1)             NULL,
   [BUILDER_EARNEST_CREDIT]           nchar(1)             NULL,
   [EXCLOTHCREDPREP]                  nchar(1)             NULL,
   [POSTCLOSE_TOLERANCECURE]          nchar(1)             NULL,
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
