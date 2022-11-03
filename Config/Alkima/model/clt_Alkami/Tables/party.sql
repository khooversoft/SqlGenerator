CREATE TABLE [clt_Alkami].[party]
(
   [party_id]                         varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [pseudo_id]                        varchar(63)          NULL,
   [party_type_enum_id]               varchar(40)          NULL,
   [disabled]                         char(1)              NULL,
   [customer_status_id]               varchar(40)          NULL,
   [owner_party_id]                   varchar(40)          NULL,
   [external_id]                      varchar(40)          NULL,
   [data_source_id]                   varchar(40)          NULL,
   [gateway_cim_id]                   varchar(63)          NULL,
   [comments]                         text                 NULL,
   [shipping_instructions]            text                 NULL,
   [has_duplicates]                   char(1)              NULL,
   [last_dup_check_date]              datetime             NULL,
   [merged_to_party_id]               varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([party_id]), CLUSTERED COLUMNSTORE INDEX)
;
