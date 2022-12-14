CREATE TABLE [clt_Alkami].[product_store]
(
   [product_store_id]                  varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]      datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]               nvarchar(10)         NULL,
   [store_name]                        text                 NULL,
   [organization_party_id]             varchar(40)          NULL,
   [inventory_facility_id]             varchar(40)          NULL,
   [reservation_order_enum_id]         varchar(40)          NULL,
   [reservation_auto_enum_id]          varchar(40)          NULL,
   [require_inventory]                 char(1)              NULL,
   [default_disable_promotions]        char(1)              NULL,
   [default_disable_shipping_calc]     char(1)              NULL,
   [default_disable_tax_calc]          char(1)              NULL,
   [return_postal_contact_mech_id]     varchar(40)          NULL,
   [markup_order_ship_labels]          char(1)              NULL,
   [markup_shipment_ship_labels]       char(1)              NULL,
   [shipment_any_carrier_method]       char(1)              NULL,
   [insurance_package_threshold]       numeric(24,4)        NULL,
   [auto_approve_delay]                numeric(20,0)        NULL,
   [store_domain]                      varchar(63)          NULL,
   [profile_url_path]                  text                 NULL,
   [wiki_space_id]                     varchar(40)          NULL,
   [content_data_document_id]          varchar(40)          NULL,
   [blog_data_document_id]             varchar(40)          NULL,
   [product_data_document_id]          varchar(40)          NULL,
   [default_locale]                    varchar(63)          NULL,
   [default_currency_uom_id]           varchar(40)          NULL,
   [default_sales_channel_enum_id]     varchar(40)          NULL,
   [require_customer_role]             char(1)              NULL,
   [tax_gateway_config_id]             varchar(40)          NULL,
   [system_message_remote_id]          varchar(40)          NULL,
   [allow_sales_rep_view_all]          char(1)              NULL,
   [from_date]                         datetime             NULL,
   [thru_date]                         datetime             NULL,
   [publish_date]                      datetime             NULL,
   [hide_date]                         datetime             NULL,
   [account_screen_flow_id]            varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([product_store_id]), CLUSTERED COLUMNSTORE INDEX)
;
