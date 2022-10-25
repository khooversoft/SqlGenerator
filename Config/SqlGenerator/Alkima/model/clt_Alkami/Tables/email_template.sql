CREATE TABLE [clt_Alkami].[email_template]
(
   [email_template_id]                varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [description]                      text                 NULL,
   [email_server_id]                  varchar(40)          NULL,
   [email_type_enum_id]               varchar(40)          NULL,
   [from_address]                     text                 NULL,
   [from_name]                        text                 NULL,
   [reply_to_addresses]               text                 NULL,
   [bounce_address]                   text                 NULL,
   [cc_addresses]                     text                 NULL,
   [bcc_addresses]                    text                 NULL,
   [subject]                          text                 NULL,
   [body_screen_location]             text                 NULL,
   [webapp_name]                      text                 NULL,
   [web_host_name]                    text                 NULL,
   [send_partial]                     char(1)              NULL,
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
WITH (DISTRIBUTION = HASH ([email_template_id]), CLUSTERED COLUMNSTORE INDEX)
;
