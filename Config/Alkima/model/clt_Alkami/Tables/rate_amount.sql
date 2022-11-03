CREATE TABLE [clt_Alkami].[rate_amount]
(
   [rate_amount_id]                   varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [from_date]                        datetime             NULL,
   [thru_date]                        datetime             NULL,
   [rate_type_enum_id]                varchar(40)          NULL,
   [rate_purpose_enum_id]             varchar(40)          NULL,
   [rate_currency_uom_id]             varchar(40)          NULL,
   [time_period_uom_id]               varchar(40)          NULL,
   [work_effort_id]                   varchar(40)          NULL,
   [party_id]                         varchar(40)          NULL,
   [work_type_enum_id]                varchar(40)          NULL,
   [pay_grade_id]                     varchar(40)          NULL,
   [empl_position_class_id]           varchar(40)          NULL,
   [rate_amount]                      numeric(26,6)        NULL,
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
WITH (DISTRIBUTION = HASH ([rate_amount_id]), CLUSTERED COLUMNSTORE INDEX)
;
