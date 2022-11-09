-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_RES_CREDIT_INQUIRY]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [INQUIRYID]                        int                  NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [PRIMARY_BNUM]                     smallint             NULL,
   [PRIMARY_DBID]                     nvarchar(5)          NULL,
   [SECONDARY_BNUM]                   int                  NULL,
   [SECONDARY_DBID]                   nvarchar(5)          NULL,
   [NAME]                             nvarchar(35)         NULL,
   [ADDRESS1]                         nvarchar(35)         NULL,
   [ADDRESS2]                         nvarchar(35)         NULL,
   [CITY]                             nvarchar(35)         NULL,
   [STATE]                            nvarchar(2)          NULL,
   [POSTAL_CODE]                      nvarchar(9)          NULL,
   [DATE_OF_INQUIRY]                  datetime             NULL,
   [INQUIRY_RESULT_TYPE]              nvarchar(8)          NULL,
   [CREDIT_BUSINESS_TYPE]             nvarchar(8)          NULL,
   [CREDIT_LOAN_TYPE]                 nvarchar(8)          NULL,
   [TYPE_OTHER_DESC]                  nvarchar(35)         NULL,
   [CREDITLIABILITYID]                nvarchar(20)         NULL,
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
