CREATE TABLE [clt_Alkami].[financial_account_type]
(
   [fin_account_type_id]              varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [parent_type_id]                   varchar(40)          NULL,
   [description]                      text                 NULL,
   [is_refundable]                    char(1)              NULL,
   [account_code_length]              numeric(20,0)        NULL,
   [require_pin_code]                 char(1)              NULL,
   [pin_code_length]                  numeric(20,0)        NULL,
   [account_valid_days]               numeric(20,0)        NULL,
   [auth_valid_days]                  numeric(20,0)        NULL,
   [replenish_min_balance]            numeric(24,4)        NULL,
   [replenish_threshold]              numeric(24,4)        NULL,
   [replenish_method_enum_id]         varchar(40)          NULL,
   [replenish_type_enum_id]           varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([fin_account_type_id]), CLUSTERED COLUMNSTORE INDEX)
;
