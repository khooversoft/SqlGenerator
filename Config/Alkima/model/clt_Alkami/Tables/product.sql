CREATE TABLE [clt_Alkami].[product]
(
   [product_id]                       varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [pseudo_id]                        varchar(63)          NULL,
   [product_type_enum_id]             varchar(40)          NULL,
   [product_class_enum_id]            varchar(40)          NULL,
   [asset_type_enum_id]               varchar(40)          NULL,
   [asset_class_enum_id]              varchar(40)          NULL,
   [status_id]                        varchar(40)          NULL,
   [owner_party_id]                   varchar(40)          NULL,
   [product_name]                     text                 NULL,
   [description]                      text                 NULL,
   [comments]                         text                 NULL,
   [sales_introduction_date]          datetime             NULL,
   [sales_discontinuation_date]       datetime             NULL,
   [sales_disc_when_not_avail]        char(1)              NULL,
   [support_discontinuation_date]     datetime             NULL,
   [require_inventory]                char(1)              NULL,
   [charge_shipping]                  char(1)              NULL,
   [signature_required_enum_id]       varchar(40)          NULL,
   [shipping_insurance_reqd]          char(1)              NULL,
   [in_shipping_box]                  char(1)              NULL,
   [default_shipment_box_type_id]     varchar(40)          NULL,
   [taxable]                          char(1)              NULL,
   [tax_code]                         varchar(63)          NULL,
   [returnable]                       char(1)              NULL,
   [amount_uom_id]                    varchar(40)          NULL,
   [amount_fixed]                     numeric(26,6)        NULL,
   [amount_require]                   char(1)              NULL,
   [origin_geo_id]                    varchar(40)          NULL,
   [payment_constant]                 numeric(25,5)        NULL,
   [payment_rounding]                 numeric(25,5)        NULL,
   [screen_flow_id]                   varchar(40)          NULL,
   [last_updated_stamp]               datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([product_id]), CLUSTERED COLUMNSTORE INDEX)
;