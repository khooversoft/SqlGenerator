-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_ASSET_ACCT]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASSETID]                          int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [HOLDER]                           nvarchar(30)         NULL,
   [ATTNOF]                           nvarchar(30)         NULL,
   [ACCTBAL]                          numeric(16,6)        NULL,
   [ACCTIN]                           nvarchar(30)         NULL,
   [LIFEFACE]                         numeric(16,6)        NULL,
   [ISSUER]                           nvarchar(30)         NULL,
   [SHARES]                           numeric(16,6)        NULL,
   [DIVIDEND]                         numeric(16,6)        NULL,
   [INT_RATE]                         numeric(16,6)        NULL,
   [ACCT_START_DT]                    datetime             NULL,
   [ACCT_MATUR_DT]                    datetime             NULL,
   [S_ACCT_OWNERSHIP]                 nvarchar(8)          NULL,
   [ASSET_ACCT_NO]                    nvarchar(30)         NULL,
   [SHARE_VALUE]                      numeric(16,6)        NULL,
   [ASSET_COLL_VALUE]                 numeric(16,6)        NULL,
   [ASSET_COLL_VAL_OVR]               numeric(16,6)        NULL,
   [ACCT_TERM]                        int                  NULL,
   [EXCHANGE_INFO]                    nvarchar(30)         NULL,
   [USE_CALC_LOAN_RT]                 nchar(1)             NULL,
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
