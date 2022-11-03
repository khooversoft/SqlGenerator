CREATE TABLE [clt_Alkami].[notification_topic]
(
   [topic]                            nvarchar(80)         NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [description]                      text                 NULL,
   [title_template]                   text                 NULL,
   [error_title_template]             text                 NULL,
   [link_template]                    text                 NULL,
   [type_string]                      varchar(63)          NULL,
   [show_alert]                       char(1)              NULL,
   [alert_no_auto_hide]               char(1)              NULL,
   [persist_on_send]                  char(1)              NULL,
   [is_private]                       char(1)              NULL,
   [receive_notifications]            char(1)              NULL,
   [email_notifications]              char(1)              NULL,
   [email_template_id]                varchar(40)          NULL,
   [email_message_save]               char(1)              NULL,
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
WITH (DISTRIBUTION = HASH ([topic]), CLUSTERED COLUMNSTORE INDEX)
;
