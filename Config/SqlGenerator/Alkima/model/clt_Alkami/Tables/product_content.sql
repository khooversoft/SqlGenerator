CREATE TABLE [clt_Alkami].[product_content]
(
   [product_content_id]               varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [product_id]                       varchar(40)          NOT NULL,
   [content_location]                 text                 NULL,
   [product_content_type_enum_id]     varchar(40)          NULL,
   [locale]                           varchar(63)          NULL,
   [product_feature_id]               varchar(40)          NULL,
   [product_store_id]                 varchar(40)          NULL,
   [from_date]                        datetime             NULL,
   [thru_date]                        datetime             NULL,
   [description]                      text                 NULL,
   [sequence_num]                     numeric(20,0)        NULL,
   [user_id]                          varchar(40)          NULL,
   [db_form_id]                       varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([product_content_id]), CLUSTERED COLUMNSTORE INDEX)
;
