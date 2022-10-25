CREATE TABLE [clt_Alkami].[service_job_run]
(
   [job_run_id]                       varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [job_name]                         varchar(63)          NULL,
   [user_id]                          varchar(40)          NULL,
   [parameters]                       text                 NULL,
   [results]                          text                 NULL,
   [messages]                         text                 NULL,
   [has_error]                        char(1)              NULL,
   [errors]                           text                 NULL,
   [host_address]                     varchar(63)          NULL,
   [host_name]                        text                 NULL,
   [run_thread]                       text                 NULL,
   [start_time]                       datetime             NULL,
   [end_time]                         datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([job_run_id]), CLUSTERED COLUMNSTORE INDEX)
;
