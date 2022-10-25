-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_AUTO_DEBIT]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [AD_FLAG]                          nchar(1)             NULL,
   [S_AD_ACCT_TYPE]                   nvarchar(8)          NULL,
   [AD_INST_NAME]                     nvarchar(40)         NULL,
   [AD_ACCT_NUMB]                     nvarchar(30)         NULL,
   [AD_RT_NUMB]                       nvarchar(35)         NULL,
   [AD_DAYOFAD]                       decimal(16,6)        NULL,
   [AD_ADDL_PRINC]                    decimal(18,3)        NULL,
   [AD_ACCT_TYP_OTH]                  nvarchar(80)         NULL,
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
