-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_RPT_INV_LOCK_SNAPSHOT]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [SNAPSHOTID]                       int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [SNAPSHOT_DATE]                    datetime             NULL,
   [DELEGATED_ENDORSEMENT_YN]         nchar(1)             NULL,
   [PRODUCT]                          nvarchar(128)        NULL,
   [RATECODE]                         nvarchar(10)         NULL,
   [INTEREST_RATE]                    float(53)            NULL,
   [AMORTIZATION_TYPE]                nvarchar(128)        NULL,
   [INVST_LOCK_PERIOD]                nvarchar(128)        NULL,
   [BASE_MARKET_PRICE]                float(53)            NULL,
   [TTL_MKT_PRICE_ADJUSTMENTS]        float(53)            NULL,
   [DELIVERY_TERMS]                   nvarchar(128)        NULL,
   [PROPERTY_TYPE]                    nvarchar(128)        NULL,
   [DOCUMENTATION_LEVEL]              nvarchar(20)         NULL,
   [OCCUPANCY_TYPE]                   nvarchar(20)         NULL,
   [PURP_OF_REFINANCE]                nvarchar(20)         NULL,
   [LOAN_PURPOSE]                     nvarchar(20)         NULL,
   [ORIGINAL_LOAN_AMOUNT]             float(53)            NULL,
   [PROPERTY_LOAN_TO_VALUE]           float(53)            NULL,
   [COMBINED_LOAN_TO_VALUE]           float(53)            NULL,
   [ALTERNATE_CREDIT_SCORE]           int                  NULL,
   [PROPERTY_STATE]                   nvarchar(5)          NULL,
   [TOTAL_RATIO]                      float(53)            NULL,
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
