CREATE TABLE [clt_Alkami].[financial_flow]
(
   [financial_flow_id]                varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [entry_type_enum_id]               varchar(40)          NULL,
   [financial_flow_type_enum_id]      varchar(40)          NULL,
   [party_id]                         varchar(40)          NULL,
   [amount]                           numeric(24,4)        NULL,
   [balance]                          numeric(24,4)        NULL,
   [interval_uom_id]                  varchar(40)          NULL,
   [data_source_id]                   varchar(40)          NULL,
   [from_date]                        datetime             NULL,
   [thru_date]                        datetime             NULL,
   [party_relationship_id]            varchar(40)          NULL,
   [asset_id]                         varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([financial_flow_id]), CLUSTERED COLUMNSTORE INDEX)
;
