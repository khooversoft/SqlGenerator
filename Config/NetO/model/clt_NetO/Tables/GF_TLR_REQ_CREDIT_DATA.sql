-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_REQ_CREDIT_DATA]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [REQUESTID]                        int                  NOT NULL,
   [CREDITREQUESTID]                  int                  NOT NULL,
   [DATAID]                           int                  NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [REPORT_IDENT]                     nvarchar(20)         NULL,
   [REPORT_PRODUCT_DESC]              nvarchar(30)         NULL,
   [PRIMARY_BNUM]                     smallint             NULL,
   [PRIMARY_DBID]                     nchar(5)             NULL,
   [SECONDARY_BNUM]                   smallint             NULL,
   [SECONDARY_DBID]                   nchar(5)             NULL,
   [ACTION_TYPE]                      nvarchar(8)          NULL,
   [ACTION_OTHER_DESC]                nvarchar(30)         NULL,
   [REPORT_TYPE]                      nvarchar(8)          NULL,
   [REPORT_OTHER_DESC]                nvarchar(30)         NULL,
   [REPOSITORY_COUNT]                 smallint             NULL,
   [REQUEST_TYPE]                     nvarchar(8)          NULL,
   [EQIFAX_INDC]                      nchar(1)             NULL,
   [TRANSUNION_INDC]                  nchar(1)             NULL,
   [EXPERIAN_INDC]                    nchar(1)             NULL,
   [OTHER_REPOS]                      nvarchar(30)         NULL,
   [CREDIT_REQ_TYPE]                  nvarchar(20)         NULL,
   [KROLL_REPORT_DATE]                datetime             NULL,
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
