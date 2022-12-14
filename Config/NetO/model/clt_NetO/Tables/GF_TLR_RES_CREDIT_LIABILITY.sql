-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_RES_CREDIT_LIABILITY]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [LIABILITYID]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [PRIMARY_BNUM]                     smallint             NULL,
   [PRIMARY_DBID]                     nchar(5)             NULL,
   [SECONDARY_BNUM]                   int                  NULL,
   [SECONDARY_DBID]                   nchar(5)             NULL,
   [CREDIT_TRADEID]                   nvarchar(20)         NULL,
   [CLOSE_DATE]                       datetime             NULL,
   [ACCOUNT_IDENTIFIER]               nvarchar(20)         NULL,
   [OPENED_DATE]                      datetime             NULL,
   [OWNERSHIP_TYPE]                   nvarchar(8)          NULL,
   [PAID_DATE]                        datetime             NULL,
   [REPORTED_DATE]                    datetime             NULL,
   [STATUS_DATE]                      datetime             NULL,
   [ACCOUNT_STATUS_TYPE]              nvarchar(8)          NULL,
   [ACCOUNT_TYPE]                     nvarchar(8)          NULL,
   [BALLOON_PAYMENT]                  decimal(18,3)        NULL,
   [CHARGE_OFF_AMOUNT]                decimal(18,3)        NULL,
   [CHARGE_OFF_DATE]                  datetime             NULL,
   [COLATERAL_DESC]                   nvarchar(80)         NULL,
   [CONSUMER_DISPUTE_INDC]            nchar(1)             NULL,
   [CREDIT_LIMIT_AMOUNT]              decimal(18,3)        NULL,
   [DEROGATORY_INDC]                  nchar(1)             NULL,
   [HIGH_BALANCE]                     decimal(18,3)        NULL,
   [HIGH_CREDIT]                      decimal(18,3)        NULL,
   [LAST_ACTIVITY_DATE]               datetime             NULL,
   [MANUAL_UPDATE_INDC]               nchar(1)             NULL,
   [MONTHLY_AMOUNT]                   decimal(18,3)        NULL,
   [MONTHS_REMAINING]                 smallint             NULL,
   [MONTHS_REVIEWED]                  smallint             NULL,
   [ORIGINAL_CREDITOR_NAME]           nvarchar(35)         NULL,
   [PAST_DUE_AMOUNT]                  decimal(18,3)        NULL,
   [TERMS_DESC]                       nvarchar(80)         NULL,
   [TERMS_MONTHS]                     smallint             NULL,
   [TERMS_SOURCE_TYPE]                nvarchar(8)          NULL,
   [UNPAID_BALANCE]                   decimal(18,3)        NULL,
   [CREDIT_BUSINESS_TYPE]             nvarchar(8)          NULL,
   [CREDIT_LOAN_TYPE]                 nvarchar(8)          NULL,
   [CREDIT_LOAN_OTHER_DESC]           nvarchar(80)         NULL,
   [CURRENT_RATING_CODE]              nvarchar(20)         NULL,
   [CURRENT_RATING_TYPE]              nvarchar(8)          NULL,
   [LATE_30_DAYS]                     smallint             NULL,
   [LATE_60_DAYS]                     smallint             NULL,
   [LATE_90_DAYS]                     smallint             NULL,
   [RECENT_ADVERSE_AMOUNT]            decimal(18,3)        NULL,
   [RECENT_ADVERSE_CODE]              nvarchar(20)         NULL,
   [RECENT_ADVERSE_TYPE]              nvarchar(8)          NULL,
   [RECENT_ADVERSE_DATE]              datetime             NULL,
   [PATTERN_START_DATE]               datetime             NULL,
   [PAYMENT_PATTERN]                  nvarchar(100)        NULL,
   [VERIFY_BY_NAME]                   nvarchar(35)         NULL,
   [VERIFY_COMMENT]                   nvarchar(80)         NULL,
   [VERIFY_DATE]                      datetime             NULL,
   [VERIFY_STATUS_TYPE]               nvarchar(8)          NULL,
   [LATE120DAYS]                      smallint             NULL,
   [CREDITLIABILITYID]                nvarchar(20)         NULL,
   [ACCOUNTBALANCEDATE]               datetime             NULL,
   [BALLOONPAYMENTDUEDATE]            datetime             NULL,
   [HIGHEST_ADVERSE_AMOUNT]           decimal(18,3)        NULL,
   [HIGHEST_ADVERSE_CODE]             nvarchar(20)         NULL,
   [HIGHEST_ADVERSE_TYPE]             nvarchar(8)          NULL,
   [HIGHEST_ADVERSE_DATE]             datetime             NULL,
   [CREDITCOUNSELINGINDICATOR]        nchar(1)             NULL,
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
