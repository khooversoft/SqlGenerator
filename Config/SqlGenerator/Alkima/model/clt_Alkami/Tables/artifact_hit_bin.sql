CREATE TABLE [clt_Alkami].[artifact_hit_bin]
(
   [hit_bin_id]                       varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [artifact_type]                    text                 NULL,
   [artifact_sub_type]                text                 NULL,
   [artifact_name]                    text                 NULL,
   [server_ip_address]                varchar(40)          NULL,
   [server_host_name]                 text                 NULL,
   [bin_start_date_time]              datetime             NULL,
   [bin_end_date_time]                datetime             NULL,
   [hit_count]                        numeric(20,0)        NULL,
   [total_time_millis]                numeric(26,6)        NULL,
   [total_squared_time]               numeric(26,6)        NULL,
   [min_time_millis]                  numeric(26,6)        NULL,
   [max_time_millis]                  numeric(26,6)        NULL,
   [slow_hit_count]                   numeric(20,0)        NULL,
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
WITH (DISTRIBUTION = HASH ([hit_bin_id]), CLUSTERED COLUMNSTORE INDEX)
;
