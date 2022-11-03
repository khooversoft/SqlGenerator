CREATE TABLE [clt_Alkami].[credit_profile]
(
   [credit_profile_id]                varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [credit_profile_status]            varchar(40)          NULL,
   [party_content_id]                 varchar(40)          NULL,
   [requesting_party_id]              varchar(40)          NULL,
   [pull_type_enum_id]                varchar(40)          NULL,
   [credit_bureau]                    varchar(40)          NULL,
   [risk_model_enum_id]               varchar(40)          NULL,
   [created_on]                       datetime             NULL,
   [has_formatted_text]               char(1)              NULL,
   [has_pdf]                          char(1)              NULL,
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
WITH (DISTRIBUTION = HASH ([credit_profile_id]), CLUSTERED COLUMNSTORE INDEX)
;
