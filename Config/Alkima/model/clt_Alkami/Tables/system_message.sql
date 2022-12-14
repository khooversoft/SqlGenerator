CREATE TABLE [clt_Alkami].[system_message]
(
   [system_message_id]                varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [system_message_type_id]           varchar(40)          NULL,
   [system_message_remote_id]         varchar(40)          NULL,
   [status_id]                        varchar(40)          NULL,
   [is_outgoing]                      char(1)              NULL,
   [init_date]                        datetime             NULL,
   [processed_date]                   datetime             NULL,
   [last_attempt_date]                datetime             NULL,
   [fail_count]                       numeric(20,0)        NULL,
   [parent_message_id]                varchar(40)          NULL,
   [ack_message_id]                   varchar(40)          NULL,
   [remote_message_id]                nvarchar(80)         NULL,
   [message_text]                     text                 NULL,
   [sender_id]                        varchar(63)          NULL,
   [receiver_id]                      varchar(63)          NULL,
   [message_id]                       varchar(63)          NULL,
   [message_date]                     datetime             NULL,
   [doc_type]                         varchar(63)          NULL,
   [doc_sub_type]                     varchar(63)          NULL,
   [doc_control]                      varchar(63)          NULL,
   [doc_sub_control]                  varchar(63)          NULL,
   [doc_version]                      varchar(63)          NULL,
   [trigger_visit_id]                 varchar(40)          NULL,
   [invoice_id]                       varchar(40)          NULL,
   [payment_method_file_id]           varchar(40)          NULL,
   [order_id]                         varchar(40)          NULL,
   [order_part_seq_id]                varchar(40)          NULL,
   [order_revision]                   numeric(20,0)        NULL,
   [return_id]                        varchar(40)          NULL,
   [shipment_id]                      varchar(40)          NULL,
   [flow_id]                          text                 NULL,
   [party_id]                         varchar(40)          NULL,
   [http_code]                        numeric(20,0)        NULL,
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
WITH (DISTRIBUTION = HASH ([system_message_id]), CLUSTERED COLUMNSTORE INDEX)
;
