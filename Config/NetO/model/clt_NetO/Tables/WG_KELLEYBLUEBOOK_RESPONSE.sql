-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_KELLEYBLUEBOOK_RESPONSE]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSE_ID]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [VALUATION_DATE]                   datetime             NULL,
   [TYPICALPRICE_VAL]                 decimal(18,3)        NULL,
   [TRADEFAIR_VAL]                    decimal(18,3)        NULL,
   [TRADEGOOD_VAL]                    decimal(18,3)        NULL,
   [TRADEVERYGOOD_VAL]                decimal(18,3)        NULL,
   [TRADEEXCELLENT_VAL]               decimal(18,3)        NULL,
   [AUCTIONFAIR_VAL]                  decimal(18,3)        NULL,
   [AUCTIONGOOD_VAL]                  decimal(18,3)        NULL,
   [AUCTIONVERYGOOD_VAL]              decimal(18,3)        NULL,
   [AUCTIONEXCELLENT_VAL]             decimal(18,3)        NULL,
   [MSRP]                             decimal(16,2)        NULL,
   [VEHICLEMILEAGE]                   int                  NULL,
   [STATUS_CODE]                      nvarchar(50)         NULL,
   [STATUS_MESSAGE]                   nvarchar(50)         NULL,
   [VEHICLE_ID]                       nvarchar(20)         NULL,
   [TRADE_IN_VAL]                     decimal(18,3)        NULL,
   [RETAIL_VAL]                       decimal(18,3)        NULL,
   [WHOLESALE_VAL]                    decimal(18,3)        NULL,
   [INVOICE_VAL]                      decimal(18,3)        NULL,
   [CYLINDERS]                        int                  NULL,
   [CC]                               int                  NULL,
   [STROKE]                           int                  NULL,
   [CATEGORY]                         nvarchar(30)         NULL,
   [S_GENERIC_BODY_STYLE]             nvarchar(8)          NULL,
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
