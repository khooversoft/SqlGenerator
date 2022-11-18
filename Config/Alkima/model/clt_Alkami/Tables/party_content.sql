CREATE TABLE [clt_Alkami].[party_content]
(
   [party_content_id]                 varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [party_id]                         varchar(40)          NULL,
   [content_location]                 text                 NULL,
   [party_content_type_enum_id]       varchar(40)          NULL,
   [description]                      text                 NULL,
   [content_date]                     datetime             NULL,
   [viewed_date]                      datetime             NULL,
   [user_id]                          varchar(40)          NULL,
   [party_id_type_enum_id]            varchar(40)          NULL,
   [original_party_content_id]        varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([party_content_id]), CLUSTERED COLUMNSTORE INDEX)
;