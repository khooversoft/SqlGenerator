-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_ASSET_VHCL_VALUATION]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASSETID]                          int                  NOT NULL,
   [VALUATION_CNTR]                   int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_VALUATION_SOURCE]               nvarchar(8)          NULL,
   [VALUATION_RESPONSE_ID]            int                  NULL,
   [ACTIVE_YN]                        nchar(1)             NULL,
   [ELECTRONIC_YN]                    nchar(1)             NULL,
   [MILEAGE_ADJ]                      numeric(16,6)        NULL,
   [DEALER_OPTS_ADJ]                  numeric(16,6)        NULL,
   [MANUFACTURER_OPTS_ADJ]            numeric(16,6)        NULL,
   [BOOK_EDITION]                     nvarchar(20)         NULL,
   [REGION]                           nvarchar(20)         NULL,
   [S_CLEAN_LEVEL]                    nvarchar(8)          NULL,
   [S_USE_FOR_LOAN_VAL]               nvarchar(8)          NULL,
   [COLL_TRADE_BAM_VALUE]             numeric(16,6)        NULL,
   [COLL_LOAN_BAM_VALUE]              numeric(16,6)        NULL,
   [COLL_RETAIL_BAM_VALUE]            numeric(16,6)        NULL,
   [TOTAL_ADJUSTED_VALUE]             numeric(16,6)        NULL,
   [MILEAGE_YN]                       nchar(1)             NULL,
   [ADJUSTED_VALUE]                   numeric(16,6)        NULL,
   [OPTIONS_VALUE]                    numeric(16,6)        NULL,
   [ENGINE_PRICING]                   numeric(16,6)        NULL,
   [PRIMARYVALUATION_YN]              nchar(1)             NULL,
   [MFG_REBATE]                       numeric(18,3)        NULL,
   [DLR_REBATE]                       numeric(18,3)        NULL,
   [MFG_OPT_PRCNG]                    numeric(18,3)        NULL,
   [DLR_OPT_PRCNG]                    numeric(18,3)        NULL,
   [INVOICE_PRC]                      numeric(18,3)        NULL,
   [TOTL_ADJSTD_VAL_OVRD]             numeric(18,3)        NULL,
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
