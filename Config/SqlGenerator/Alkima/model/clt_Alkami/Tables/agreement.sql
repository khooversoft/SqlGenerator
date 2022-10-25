CREATE TABLE [clt_Alkami].[agreement]
(
   [agreement_id]                     varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [agreement_type_enum_id]           varchar(40)          NULL,
   [status_id]                        varchar(40)          NULL,
   [organization_party_id]            varchar(40)          NULL,
   [organization_role_type_id]        varchar(40)          NULL,
   [other_party_id]                   varchar(40)          NULL,
   [other_role_type_id]               varchar(40)          NULL,
   [agreement_date]                   datetime             NULL,
   [from_date]                        datetime             NULL,
   [thru_date]                        datetime             NULL,
   [description]                      text                 NULL,
   [currency_uom_id]                  varchar(40)          NULL,
   [is_template]                      char(1)              NULL,
   [template_agreement_id]            varchar(40)          NULL,
   [text_data]                        text                 NULL,
   [signable_option_type_enum_id]     varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([agreement_id]), CLUSTERED COLUMNSTORE INDEX)
;
