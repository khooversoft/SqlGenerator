-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_AssetAcq].[CommonSettlement]
(
   [BECUAccountNumber]                nvarchar(50)         NOT NULL,
   [loan_number]                      long                 NULL,
   [product_type]                     nvarchar(100)        NULL,
   [service_fee]                      decimal(16,6)        NULL,
   [balance]                          decimal(16,6)        NULL,
   [participation_balance_90]         decimal(16,6)        NULL,
   [date_interest_paid_to]            datetime             NULL,
   [original_loan_to_value_ratio]     decimal(16,6)        NULL,
   [net_int]                          decimal(16,6)        NULL,
   [price]                            decimal(16,6)        NULL,
   [premium_discount]                 decimal(16,6)        NULL,
   [funds_due]                        decimal(16,6)        NULL,
   [VendorId]                         nvarchar(100)        NULL,
   [DealId]                           int                  NULL,
   [HeldForSaleFlag]                  nchar(1)             NULL,
   [ParticpationRatio]                decimal(16,6)        NULL,
   [LoanSource]                       nvarchar(100)        NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL
)
WITH (DISTRIBUTION = HASH ([BECUAccountNumber]), CLUSTERED COLUMNSTORE INDEX)
;
