CREATE TABLE [clt_Alkami].[order_part]
(
   [order_id]                         varchar(40)          NOT NULL,
   [order_part_seq_id]                varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [parent_part_seq_id]               varchar(40)          NULL,
   [part_name]                        text                 NULL,
   [status_id]                        varchar(40)          NULL,
   [vendor_party_id]                  varchar(40)          NULL,
   [customer_party_id]                varchar(40)          NULL,
   [other_party_order_id]             varchar(63)          NULL,
   [other_party_order_date]           datetime             NULL,
   [facility_id]                      varchar(40)          NULL,
   [carrier_party_id]                 varchar(40)          NULL,
   [shipment_method_enum_id]          varchar(40)          NULL,
   [trade_term_enum_id]               varchar(40)          NULL,
   [settlement_term_id]               varchar(40)          NULL,
   [postal_contact_mech_id]           varchar(40)          NULL,
   [telecom_contact_mech_id]          varchar(40)          NULL,
   [tracking_number]                  varchar(63)          NULL,
   [shipping_instructions]            text                 NULL,
   [may_split]                        char(1)              NULL,
   [signature_required_enum_id]       varchar(40)          NULL,
   [gift_message]                     text                 NULL,
   [is_gift]                          char(1)              NULL,
   [is_new_customer]                  char(1)              NULL,
   [part_total]                       numeric(24,4)        NULL,
   [priority]                         numeric(20,0)        NULL,
   [ship_after_date]                  datetime             NULL,
   [ship_before_date]                 datetime             NULL,
   [estimated_ship_date]              datetime             NULL,
   [estimated_delivery_date]          datetime             NULL,
   [estimated_pick_up_date]           datetime             NULL,
   [valid_from_date]                  datetime             NULL,
   [valid_thru_date]                  datetime             NULL,
   [auto_cancel_date]                 datetime             NULL,
   [dont_cancel_set_date]             datetime             NULL,
   [dont_cancel_set_user_id]          varchar(40)          NULL,
   [disable_promotions]               char(1)              NULL,
   [disable_shipping_calc]            char(1)              NULL,
   [disable_tax_calc]                 char(1)              NULL,
   [reservation_auto_enum_id]         varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([order_id]), CLUSTERED COLUMNSTORE INDEX)
;
