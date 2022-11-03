CREATE TABLE [clt_Alkami].[product_store_entry]
(
   [entry_id]                         varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [condition_type_enum_id]           varchar(40)          NULL,
   [condition_value]                  text                 NULL,
   [condition_expression]             text                 NULL,
   [product_store_id]                 varchar(40)          NULL,
   [screen_path]                      text                 NULL,
   [creation_date]                    datetime             NULL,
   [sequence_num]                     numeric(20,0)        NULL,
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
WITH (DISTRIBUTION = HASH ([entry_id]), CLUSTERED COLUMNSTORE INDEX)
;
