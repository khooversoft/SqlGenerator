-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[HELOC2]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [INITIAL_ADVANCE]                  decimal(18,3)        NULL,
   [HELOC_DESCRIPTION]                nvarchar(60)         NULL,
   [BILL_END_DATE]                    datetime             NULL,
   [MIN_BALANCE]                      decimal(18,3)        NULL,
   [OPENEND_CREDIT_IND]               nchar(1)             NULL,
   [S_RTC_TYPE]                       nvarchar(8)          NULL,
   [WAIVE_ANNUAL_FEE]                 nchar(1)             NULL,
   [ANNUAL_FEE_START_DT]              datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([LNUM]), CLUSTERED COLUMNSTORE INDEX)
;
