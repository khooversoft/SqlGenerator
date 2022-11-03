CREATE TABLE [clt_Alkami].[payroll_garnish_min_wage]
(
   [state_or_country_geo_id]          varchar(40)          NOT NULL,
   [time_period_type_id]              varchar(40)          NOT NULL,
   [from_date]                        datetime             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [thru_date]                        datetime             NULL,
   [minimum_wage]                     numeric(26,6)        NULL,
   [range_low]                        numeric(26,6)        NULL,
   [range_high]                       numeric(26,6)        NULL,
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
WITH (DISTRIBUTION = HASH ([state_or_country_geo_id]), CLUSTERED COLUMNSTORE INDEX)
;
