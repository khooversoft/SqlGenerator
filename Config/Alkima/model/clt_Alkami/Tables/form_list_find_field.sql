CREATE TABLE [clt_Alkami].[form_list_find_field]
(
   [form_list_find_id]                varchar(40)          NOT NULL,
   [field_name]                       varchar(63)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [field_value]                      text                 NULL,
   [field_operator]                   varchar(63)          NULL,
   [field_not]                        char(1)              NULL,
   [field_ignore_case]                char(1)              NULL,
   [field_from]                       varchar(63)          NULL,
   [field_thru]                       varchar(63)          NULL,
   [field_period]                     varchar(63)          NULL,
   [field_per_offset]                 numeric(20,0)        NULL,
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
WITH (DISTRIBUTION = HASH ([form_list_find_id]), CLUSTERED COLUMNSTORE INDEX)
;
