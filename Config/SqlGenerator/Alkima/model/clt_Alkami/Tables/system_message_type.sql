CREATE TABLE [clt_Alkami].[system_message_type]
(
   [system_message_type_id]           varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [description]                      text                 NULL,
   [produce_service_name]             text                 NULL,
   [consume_service_name]             text                 NULL,
   [produce_ack_service_name]         text                 NULL,
   [produce_ack_on_consumed]          char(1)              NULL,
   [send_service_name]                text                 NULL,
   [receive_service_name]             text                 NULL,
   [content_type]                     varchar(63)          NULL,
   [receive_path]                     text                 NULL,
   [receive_file_pattern]             text                 NULL,
   [receive_response_enum_id]         varchar(40)          NULL,
   [receive_move_path]                text                 NULL,
   [send_path]                        text                 NULL,
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
WITH (DISTRIBUTION = HASH ([system_message_type_id]), CLUSTERED COLUMNSTORE INDEX)
;
