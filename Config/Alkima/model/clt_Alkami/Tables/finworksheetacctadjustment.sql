CREATE TABLE [clt_Alkami].[finworksheetacctadjustment]
(
   [financial_worksheet_id]           varchar(40)          NOT NULL,
   [account_id]                       varchar(255)         NOT NULL,
   [from_date]                        datetime             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [thru_date]                        datetime             NULL,
   [adjuster_user_id]                 varchar(40)          NULL,
   [adjustment_reason_enum_id]        varchar(40)          NULL,
   [adjustment_note]                  text                 NULL,
   [secured]                          char(1)              NULL,
   [include]                          char(1)              NULL,
   [adjusted_balance]                 numeric(25,5)        NULL,
   [adjusted_payment]                 numeric(25,5)        NULL,
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
WITH (DISTRIBUTION = HASH ([financial_worksheet_id]), CLUSTERED COLUMNSTORE INDEX)
;
