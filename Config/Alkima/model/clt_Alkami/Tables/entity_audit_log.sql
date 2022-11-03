CREATE TABLE [clt_Alkami].[entity_audit_log]
(
   [audit_history_seq_id]             varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [changed_entity_name]              nvarchar(80)         NULL,
   [changed_field_name]               varchar(63)          NULL,
   [pk_primary_value]                 nvarchar(80)         NULL,
   [pk_secondary_value]               text                 NULL,
   [pk_rest_combined_value]           text                 NULL,
   [old_value_text]                   text                 NULL,
   [new_value_text]                   text                 NULL,
   [change_reason]                    text                 NULL,
   [changed_date]                     datetime             NULL,
   [changed_by_user_id]               text                 NULL,
   [changed_in_visit_id]              text                 NULL,
   [artifact_stack]                   text                 NULL,
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
WITH (DISTRIBUTION = HASH ([audit_history_seq_id]), CLUSTERED COLUMNSTORE INDEX)
;
