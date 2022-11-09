-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLBC_TU_RES_PUB_REC]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ROWCOUNTER]                       smallint             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [FILED_DT]                         datetime             NULL,
   [ASSETS]                           decimal(18,3)        NULL,
   [PLAINTIFF]                        nvarchar(32)         NULL,
   [ECOA]                             nvarchar(25)         NULL,
   [INDUSTRY_CODE]                    nchar(2)             NULL,
   [MEMBER_CODE]                      nvarchar(8)          NULL,
   [PR_TYPE]                          nchar(2)             NULL,
   [DOCKET_NUMBER]                    nvarchar(30)         NULL,
   [ATTORNEY]                         nvarchar(38)         NULL,
   [REPORTED_DT]                      datetime             NULL,
   [PAID_DT]                          datetime             NULL,
   [LIABILITIES_AMOUNT]               decimal(18,3)        NULL,
   [ORIGINAL_BALANCE]                 decimal(18,3)        NULL,
   [CURRENT_BALANCE]                  decimal(18,3)        NULL,
   [PR_SOURCE_CODE]                   nvarchar(25)         NULL,
   [SOURCE_CITY]                      nvarchar(28)         NULL,
   [SOURCE_STATE]                     nchar(2)             NULL,
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
