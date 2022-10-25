CREATE TABLE [clt_Alkami].[contact_mech]
(
   [contact_mech_id]                  varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [contact_mech_type_enum_id]        varchar(40)          NULL,
   [data_source_id]                   varchar(40)          NULL,
   [info_string]                      nvarchar(80)         NULL,
   [gateway_cim_id]                   varchar(63)          NULL,
   [trust_level_enum_id]              varchar(40)          NULL,
   [validate_message]                 text                 NULL,
   [payment_fraud_evidence_id]        varchar(40)          NULL,
   [replaces_contact_mech_id]         varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([contact_mech_id]), CLUSTERED COLUMNSTORE INDEX)
;
