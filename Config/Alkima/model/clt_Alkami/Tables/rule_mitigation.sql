CREATE TABLE [clt_Alkami].[rule_mitigation]
(
   [mitigation_id]                    varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [order_id]                         varchar(40)          NULL,
   [rule_id]                          varchar(40)          NULL,
   [party_id]                         varchar(40)          NULL,
   [mitigated_value]                  text                 NULL,
   [mitigated_level_enum_id]          varchar(40)          NULL,
   [new_level_enum_id]                varchar(40)          NULL,
   [reason_enum_id]                   varchar(40)          NULL,
   [note]                             text                 NULL,
   [user_id]                          varchar(40)          NULL,
   [from_date]                        datetime             NULL,
   [thru_date]                        datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([mitigation_id]), CLUSTERED COLUMNSTORE INDEX)
;
