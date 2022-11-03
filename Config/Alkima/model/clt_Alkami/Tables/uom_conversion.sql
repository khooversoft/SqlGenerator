CREATE TABLE [clt_Alkami].[uom_conversion]
(
   [uom_conversion_id]                varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [uom_id]                           varchar(40)          NULL,
   [to_uom_id]                        varchar(40)          NULL,
   [from_date]                        datetime             NULL,
   [thru_date]                        datetime             NULL,
   [conversion_factor]                float                NULL,
   [conversion_offset]                numeric(26,6)        NULL,
   [purpose_enum_id]                  varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([uom_conversion_id]), CLUSTERED COLUMNSTORE INDEX)
;
