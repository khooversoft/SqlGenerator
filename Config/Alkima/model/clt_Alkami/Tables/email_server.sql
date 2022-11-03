CREATE TABLE [clt_Alkami].[email_server]
(
   [email_server_id]                  varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [smtp_host]                        text                 NULL,
   [smtp_port]                        varchar(63)          NULL,
   [smtp_start_tls]                   char(1)              NULL,
   [smtp_ssl]                         char(1)              NULL,
   [store_host]                       text                 NULL,
   [store_port]                       varchar(63)          NULL,
   [store_protocol]                   varchar(63)          NULL,
   [store_folder]                     text                 NULL,
   [store_delete]                     char(1)              NULL,
   [store_mark_seen]                  char(1)              NULL,
   [store_skip_seen]                  char(1)              NULL,
   [mail_username]                    text                 NULL,
   [mail_password]                    text                 NULL,
   [allowed_to_domains]               text                 NULL,
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
WITH (DISTRIBUTION = HASH ([email_server_id]), CLUSTERED COLUMNSTORE INDEX)
;
