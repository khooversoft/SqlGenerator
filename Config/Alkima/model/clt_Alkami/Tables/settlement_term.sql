CREATE TABLE [clt_Alkami].[settlement_term]
(
   [settlement_term_id]                varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]      datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]               nvarchar(10)         NULL,
   [term_type_enum_id]                 varchar(40)          NULL,
   [description]                       text                 NULL,
   [term_value]                        numeric(26,6)        NULL,
   [term_value_uom_id]                 varchar(40)          NULL,
   [order_pmt_service_register_id]     varchar(40)          NULL,
   [last_updated_stamp]                datetime             NULL,
   [ASAP_ROW_HASH]                     nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                     nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                 datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                 datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                   nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                  nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                   nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                 nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]                datetime2(7)         NULL,
   [ASAP_SRC_NAME]                     nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([settlement_term_id]), CLUSTERED COLUMNSTORE INDEX)
;
