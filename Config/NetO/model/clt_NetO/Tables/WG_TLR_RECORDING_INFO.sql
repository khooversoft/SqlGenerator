-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_TLR_RECORDING_INFO]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ROWSERIALNO]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [REOCNTR]                          int                  NULL,
   [RECORDING_DATE]                   datetime             NULL,
   [DOCUMENT_TYPE]                    nvarchar(8)          NULL,
   [DOCUMENT_NUMBER]                  nvarchar(20)         NULL,
   [DOC_TYPE_OTHER_DESC]              nvarchar(80)         NULL,
   [JURISDICTION_NAME]                nvarchar(80)         NULL,
   [JURISDICTION_TYPE]                nvarchar(8)          NULL,
   [JUDICIAL_DISTRICT]                nvarchar(80)         NULL,
   [RECORDING_DISTRICT]               nvarchar(80)         NULL,
   [BOOK_TYPE]                        nvarchar(8)          NULL,
   [BOOK_NUMBER]                      nvarchar(20)         NULL,
   [INSTRUMENT_NUMBER]                nvarchar(80)         NULL,
   [RECORDING_OFFICE]                 nvarchar(80)         NULL,
   [RECORDING_STATE]                  nvarchar(2)          NULL,
   [RECORDING_COUNTY]                 nvarchar(80)         NULL,
   [PAGE_NUMBER]                      nvarchar(20)         NULL,
   [VOLUME_NUMBER]                    nvarchar(20)         NULL,
   [RECORDING_CITY]                   nvarchar(20)         NULL,
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
