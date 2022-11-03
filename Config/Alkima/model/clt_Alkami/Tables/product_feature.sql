CREATE TABLE [clt_Alkami].[product_feature]
(
   [product_feature_id]               varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [product_feature_type_enum_id]     varchar(40)          NULL,
   [description]                      text                 NULL,
   [number_specified]                 numeric(26,6)        NULL,
   [number_uom_id]                    varchar(40)          NULL,
   [default_amount]                   numeric(24,4)        NULL,
   [default_sequence_num]             numeric(20,0)        NULL,
   [abbrev]                           varchar(40)          NULL,
   [id_code]                          varchar(63)          NULL,
   [owner_party_id]                   varchar(40)          NULL,
   [number_per_pallet]                numeric(26,6)        NULL,
   [per_pallet_tier]                  numeric(26,6)        NULL,
   [tiers_per_pallet]                 numeric(26,6)        NULL,
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
WITH (DISTRIBUTION = HASH ([product_feature_id]), CLUSTERED COLUMNSTORE INDEX)
;
