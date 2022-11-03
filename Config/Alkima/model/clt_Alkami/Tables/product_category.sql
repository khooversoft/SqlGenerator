CREATE TABLE [clt_Alkami].[product_category]
(
   [product_category_id]               varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]      datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]               nvarchar(10)         NULL,
   [pseudo_id]                         varchar(63)          NULL,
   [product_category_type_enum_id]     varchar(40)          NULL,
   [category_name]                     text                 NULL,
   [description]                       text                 NULL,
   [owner_party_id]                    varchar(40)          NULL,
   [display_type_enum_id]              varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([product_category_id]), CLUSTERED COLUMNSTORE INDEX)
;
