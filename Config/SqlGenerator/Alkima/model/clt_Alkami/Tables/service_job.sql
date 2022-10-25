CREATE TABLE [clt_Alkami].[service_job]
(
   [job_name]                         varchar(63)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [description]                      text                 NULL,
   [service_name]                     text                 NULL,
   [transaction_timeout]              numeric(20,0)        NULL,
   [topic]                            text                 NULL,
   [local_only]                       char(1)              NULL,
   [cron_expression]                  varchar(63)          NULL,
   [from_date]                        datetime             NULL,
   [thru_date]                        datetime             NULL,
   [repeat_count]                     numeric(20,0)        NULL,
   [paused]                           char(1)              NULL,
   [expire_lock_time]                 numeric(20,0)        NULL,
   [min_retry_time]                   numeric(20,0)        NULL,
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
WITH (DISTRIBUTION = HASH ([job_name]), CLUSTERED COLUMNSTORE INDEX)
;
