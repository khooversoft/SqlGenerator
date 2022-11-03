-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_FUNDITEM]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [TRANS_COUNTER]                    int                  NOT NULL,
   [TRANS_DBID]                       nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [SOURCE_XREF]                      nvarchar(80)         NULL,
   [MODIFIED_DATE]                    datetime             NULL,
   [MODIFIED_USER]                    nvarchar(30)         NULL,
   [DESCRIPT]                         nvarchar(255)        NULL,
   [AMOUNT]                           decimal(16,6)        NULL,
   [OMIT_FROM_FUNDING]                nchar(1)             NULL,
   [ACTION_TO_TAKE]                   nvarchar(15)         NULL,
   [ITEM_STATUS]                      nvarchar(15)         NULL,
   [GL_TRANS_CODE]                    nvarchar(3)          NULL,
   [BATCHID]                          int                  NULL,
   [SOURCE_DISPLAY]                   nvarchar(40)         NULL,
   [SRC_FLDNAME]                      nvarchar(40)         NULL,
   [SRC_CODE]                         nvarchar(8)          NULL,
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
