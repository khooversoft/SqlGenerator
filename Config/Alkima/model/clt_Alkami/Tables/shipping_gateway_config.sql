CREATE TABLE [clt_Alkami].[shipping_gateway_config]
(
   [shipping_gateway_config_id]        varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]      datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]               nvarchar(10)         NULL,
   [shipping_gateway_type_enum_id]     varchar(40)          NULL,
   [description]                       text                 NULL,
   [get_order_rate_service_name]       text                 NULL,
   [get_shipping_rates_bulk_name]      text                 NULL,
   [get_auto_package_info_name]        text                 NULL,
   [get_rate_service_name]             text                 NULL,
   [request_labels_service_name]       text                 NULL,
   [refund_labels_service_name]        text                 NULL,
   [track_labels_service_name]         text                 NULL,
   [validate_address_service_name]     text                 NULL,
   [last_updated_stamp]                datetime             NULL,
   [ASAP_ROW_HASH]                     nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                     nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                 datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                 datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                   nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                  nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                   nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                 nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]                datetime2(7)         NULL,
   [ASAP_SRC_NAME]                     nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([shipping_gateway_config_id]), CLUSTERED COLUMNSTORE INDEX)
;
