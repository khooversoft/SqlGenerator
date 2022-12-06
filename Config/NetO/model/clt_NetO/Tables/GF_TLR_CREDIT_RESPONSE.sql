-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_CREDIT_RESPONSE]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [VERSION_IDENT]                    nvarchar(20)         NULL,
   [CREDIT_REPORT_IDENT]              nvarchar(20)         NULL,
   [FIRST_ISSUE_DATE]                 datetime             NULL,
   [LAST_UPDATE_DATE]                 datetime             NULL,
   [MERGE_TYPE]                       nvarchar(8)          NULL,
   [REPORT_TYPE]                      nvarchar(8)          NULL,
   [REPORT_TYPE_OTHER]                nvarchar(35)         NULL,
   [RATEING_CODE_TYPE]                nvarchar(8)          NULL,
   [RATING_TYPE_OTHER]                nvarchar(35)         NULL,
   [EQUIFAX_INDC]                     nchar(1)             NULL,
   [EXPERIAN_INDC]                    nchar(1)             NULL,
   [TRANSUNION_INDC]                  nchar(1)             NULL,
   [OTHER_REPOSITORY_NAME]            nvarchar(35)         NULL,
   [CREDITREPORTTRANSID]              nvarchar(20)         NULL,
   [CREDIT_RESP_IMPORT_XML]           nvarchar(MAX)        NULL,
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
WITH ( CLUSTERED INDEX ([LNUM], [RESPONSEID], [CREDITRESPONSEID], [DBID]) )
;
