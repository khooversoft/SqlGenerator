CREATE TABLE [clt_Alkami].[db_form_validation]
(
   [validation_id]                    varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [form_id]                          varchar(40)          NULL,
   [field_name]                       text                 NULL,
   [sequence_num]                     numeric(20,0)        NULL,
   [message_type_enum_id]             varchar(40)          NULL,
   [message_key]                      text                 NULL,
   [validate_expression]              text                 NULL,
   [validate_service_register_id]     varchar(40)          NULL,
   [disabled]                         char(1)              NULL,
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
WITH (DISTRIBUTION = HASH ([validation_id]), CLUSTERED COLUMNSTORE INDEX)
;
