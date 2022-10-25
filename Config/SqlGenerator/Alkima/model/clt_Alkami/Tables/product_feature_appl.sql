CREATE TABLE [clt_Alkami].[product_feature_appl]
(
   [product_id]                       varchar(40)          NOT NULL,
   [product_feature_id]               varchar(40)          NOT NULL,
   [from_date]                        datetime             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [thru_date]                        datetime             NULL,
   [appl_type_enum_id]                varchar(40)          NULL,
   [sequence_num]                     numeric(20,0)        NULL,
   [amount]                           numeric(26,6)        NULL,
   [recurring_amount]                 numeric(26,6)        NULL,
   [feature_product_id]               varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([product_id]), CLUSTERED COLUMNSTORE INDEX)
;
