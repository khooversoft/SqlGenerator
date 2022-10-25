CREATE TABLE [clt_Alkami].[payment_plan]
(
   [payment_plan_id]                  varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [from_payment_method_id]           varchar(40)          NULL,
   [to_payment_method_id]             varchar(40)          NULL,
   [amount_type_enum_id]              varchar(40)          NULL,
   [fixed_amount]                     numeric(26,6)        NULL,
   [date_type_enum_id]                varchar(40)          NULL,
   [day_of_month]                     numeric(20,0)        NULL,
   [order_id]                         varchar(40)          NULL,
   [from_date]                        datetime             NULL,
   [to_date]                          datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([payment_plan_id]), CLUSTERED COLUMNSTORE INDEX)
;
