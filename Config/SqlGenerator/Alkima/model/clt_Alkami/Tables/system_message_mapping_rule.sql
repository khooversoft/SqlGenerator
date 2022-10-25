CREATE TABLE [clt_Alkami].[system_message_mapping_rule]
(
   [ruleset_id]                       varchar(40)          NOT NULL,
   [rule_seq_id]                      varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [request_field_name]               nvarchar(80)         NULL,
   [internal_field_name]              nvarchar(80)         NULL,
   [internal_field_type]              nvarchar(80)         NULL,
   [internal_field_expression]        text                 NULL,
   [service_register_id]              varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([ruleset_id]), CLUSTERED COLUMNSTORE INDEX)
;
