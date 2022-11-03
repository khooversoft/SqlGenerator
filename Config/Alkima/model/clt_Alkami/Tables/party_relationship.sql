CREATE TABLE [clt_Alkami].[party_relationship]
(
   [party_relationship_id]            varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [relationship_type_enum_id]        varchar(40)          NULL,
   [from_party_id]                    varchar(40)          NULL,
   [from_role_type_id]                varchar(40)          NULL,
   [to_party_id]                      varchar(40)          NULL,
   [to_role_type_id]                  varchar(40)          NULL,
   [from_date]                        datetime             NULL,
   [thru_date]                        datetime             NULL,
   [status_id]                        varchar(40)          NULL,
   [comments]                         text                 NULL,
   [relationship_name]                text                 NULL,
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
WITH (DISTRIBUTION = HASH ([party_relationship_id]), CLUSTERED COLUMNSTORE INDEX)
;
