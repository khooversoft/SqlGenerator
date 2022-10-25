CREATE TABLE [clt_Alkami].[payroll_adjustment_detail]
(
   [payroll_adjustment_id]            varchar(40)          NOT NULL,
   [detail_seq_id]                    varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [rate]                             float                NULL,
   [rate_after_ytd_min]               char(1)              NULL,
   [ytd_min]                          numeric(24,4)        NULL,
   [ytd_max]                          numeric(24,4)        NULL,
   [rate_after_period_min]            char(1)              NULL,
   [period_min]                       numeric(24,4)        NULL,
   [period_max]                       numeric(24,4)        NULL,
   [flat_amount]                      numeric(24,4)        NULL,
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
WITH (DISTRIBUTION = HASH ([payroll_adjustment_id]), CLUSTERED COLUMNSTORE INDEX)
;
