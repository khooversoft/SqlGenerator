-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_RPT_AMOUNTS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [AMORT_TERM]                       smallint             NULL,
   [APPRAISAL_VALUE]                  decimal(18,3)        NULL,
   [CLTV]                             numeric(16,6)        NULL,
   [DISCOUNT_AMT]                     numeric(16,6)        NULL,
   [HLTV]                             numeric(16,6)        NULL,
   [INTEREST_RATE]                    numeric(16,6)        NULL,
   [LOCK_DAYS]                        smallint             NULL,
   [LTV]                              numeric(16,6)        NULL,
   [MARGIN_PCT]                       numeric(16,6)        NULL,
   [ORIG_LOAN_AMOUNT]                 decimal(18,3)        NULL,
   [ORIGINATION_AMT]                  numeric(16,6)        NULL,
   [PROP_MKT_VALUE]                   decimal(18,3)        NULL,
   [INVLK_MARKET_PRICE]               numeric(16,6)        NULL,
   [INVLK_SRP_FACTOR]                 numeric(16,6)        NULL,
   [YSP]                              numeric(16,6)        NULL,
   [OVERAGE]                          numeric(16,6)        NULL,
   [APR]                              numeric(16,6)        NULL,
   [UNPAID_PRIN_BAL]                  decimal(18,3)        NULL,
   [ARM_INDEX]                        numeric(16,6)        NULL,
   [BASE_MARKET_PRICE]                numeric(16,6)        NULL,
   [BASE_MARKET_PRICE_OVR]            numeric(16,6)        NULL,
   [INVLK_MARKET_PRICE_OVR]           numeric(16,6)        NULL,
   [SERVICING_FEE]                    numeric(16,6)        NULL,
   [TTL_MKT_PRICE_ADJUSTMENTS]        numeric(16,6)        NULL,
   [DEBT_RATIO]                       numeric(16,6)        NULL,
   [HOUSING_RATIO]                    numeric(16,6)        NULL,
   [BASE_LOAN_AMOUNT]                 decimal(18,3)        NULL,
   [CONCURRENT_FINANCE_AMT]           decimal(16,6)        NULL,
   [DISCOUNT_POINTS]                  decimal(16,6)        NULL,
   [HELOC_INITIAL_ADVANCE]            decimal(18,3)        NULL,
   [QUALIFYING_RATE]                  decimal(16,6)        NULL,
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
