CREATE TABLE [clt_Alkami].[notification_message]
(
   [notification_message_id]          varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [topic]                            text                 NULL,
   [user_group_id]                    varchar(40)          NULL,
   [sent_date]                        datetime             NULL,
   [message_json]                     text                 NULL,
   [title_text]                       text                 NULL,
   [link_text]                        text                 NULL,
   [type_string]                      varchar(63)          NULL,
   [show_alert]                       char(1)              NULL,
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
WITH (DISTRIBUTION = HASH ([notification_message_id]), CLUSTERED COLUMNSTORE INDEX)
;
