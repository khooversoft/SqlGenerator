CREATE TABLE [clt_Alkami].[tax_authority]
(
   [tax_authority_id]                 varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [tax_authority_type_enum_id]       varchar(40)          NULL,
   [description]                      text                 NULL,
   [tax_auth_geo_id]                  varchar(40)          NULL,
   [tax_auth_party_id]                varchar(40)          NULL,
   [require_tax_id_for_exemption]     char(1)              NULL,
   [tax_id_format_pattern]            text                 NULL,
   [include_tax_in_price]             char(1)              NULL,
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
WITH (DISTRIBUTION = HASH ([tax_authority_id]), CLUSTERED COLUMNSTORE INDEX)
;
