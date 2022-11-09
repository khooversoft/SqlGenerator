-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_DISCL_DATA]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ROWSERIALNO]                      int                  NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [APR]                              decimal(16,6)        NULL,
   [FINANCE_CHARGE_AMOUNT]            decimal(18,3)        NULL,
   [FINANCED_AMOUNT]                  decimal(18,3)        NULL,
   [TOTAL_PAYMENT_AMOUNT]             decimal(18,3)        NULL,
   [YSP_AMOUNT]                       decimal(18,3)        NULL,
   [DISCL_LOAN_AMOUNT]                decimal(18,3)        NULL,
   [DISCL_CLOSING_COSTS]              decimal(18,3)        NULL,
   [DISCL_REVIEW_TILA]                nvarchar(20)         NULL,
   [DISCL_LOAN_TYPE]                  nvarchar(20)         NULL,
   [DISCL_PROGRAM]                    nvarchar(20)         NULL,
   [DISCL_PAYMENT_STREAM]             nvarchar(20)         NULL,
   [DISCL_MI_PLAN]                    nvarchar(20)         NULL,
   [DISCL_OCCUPANCY]                  nvarchar(20)         NULL,
   [INT_RATE]                         decimal(16,6)        NULL,
   [DISCL_BORROWER_COUNT]             int                  NULL,
   [VERBALDISC]                       nchar(1)             NULL,
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
