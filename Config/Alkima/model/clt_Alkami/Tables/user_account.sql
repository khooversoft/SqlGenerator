CREATE TABLE [clt_Alkami].[user_account]
(
   [user_id]                          varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [username]                         nvarchar(100)        NULL,
   [user_full_name]                   text                 NULL,
   [current_password]                 text                 NULL,
   [reset_password]                   text                 NULL,
   [password_salt]                    text                 NULL,
   [password_hash_type]               varchar(63)          NULL,
   [password_base64]                  char(1)              NULL,
   [password_set_date]                datetime             NULL,
   [password_hint]                    text                 NULL,
   [public_key]                       text                 NULL,
   [has_logged_out]                   char(1)              NULL,
   [disabled]                         char(1)              NULL,
   [disabled_date_time]               datetime             NULL,
   [terminate_date]                   datetime             NULL,
   [successive_failed_logins]         numeric(20,0)        NULL,
   [require_password_change]          char(1)              NULL,
   [currency_uom_id]                  varchar(40)          NULL,
   [locale]                           varchar(63)          NULL,
   [time_zone]                        varchar(63)          NULL,
   [external_user_id]                 text                 NULL,
   [email_address]                    nvarchar(80)         NULL,
   [ip_allowed]                       text                 NULL,
   [party_id]                         varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([user_id]), CLUSTERED COLUMNSTORE INDEX)
;