CREATE TABLE [clt_Alkami].[order_header]
(
   [order_id]                         varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [order_name]                       text                 NULL,
   [entry_date]                       datetime             NULL,
   [placed_date]                      datetime             NULL,
   [approved_date]                    datetime             NULL,
   [completed_date]                   datetime             NULL,
   [status_id]                        varchar(40)          NULL,
   [processing_status_id]             varchar(40)          NULL,
   [order_revision]                   numeric(20,0)        NULL,
   [currency_uom_id]                  varchar(40)          NULL,
   [billing_account_id]               varchar(40)          NULL,
   [product_store_id]                 varchar(40)          NULL,
   [sales_channel_enum_id]            varchar(40)          NULL,
   [terminal_id]                      varchar(63)          NULL,
   [display_id]                       varchar(63)          NULL,
   [external_id]                      varchar(63)          NULL,
   [external_revision]                varchar(63)          NULL,
   [origin_id]                        varchar(63)          NULL,
   [origin_url]                       text                 NULL,
   [sync_status_id]                   varchar(40)          NULL,
   [system_message_remote_id]         varchar(40)          NULL,
   [visit_id]                         varchar(40)          NULL,
   [entered_by_party_id]              varchar(40)          NULL,
   [parent_order_id]                  varchar(40)          NULL,
   [recur_cron_expression]            text                 NULL,
   [last_ordered_date]                datetime             NULL,
   [recur_auto_invoice]               char(1)              NULL,
   [remaining_sub_total]              numeric(24,4)        NULL,
   [grand_total]                      numeric(24,4)        NULL,
   [requested_date]                   datetime             NULL,
   [decision_date]                    datetime             NULL,
   [lock_date]                        datetime             NULL,
   [lock_user_id]                     varchar(40)          NULL,
   [merchant_id]                      varchar(40)          NULL,
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
