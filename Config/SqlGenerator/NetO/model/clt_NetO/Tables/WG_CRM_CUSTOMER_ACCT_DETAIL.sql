-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_CRM_CUSTOMER_ACCT_DETAIL]
(
   [CURRENT_CUSTOMERID]               nvarchar(50)         NOT NULL,
   [ACC_TYPE]                         nvarchar(50)         NOT NULL,
   [ROWSERIALNO]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ACCTNUM]                          nvarchar(35)         NULL,
   [MINORCODE]                        nvarchar(50)         NULL,
   [ACCTBAL]                          decimal(18,3)        NULL,
   [BANKRUPTCY]                       nchar(1)             NULL,
   [ACCT_CHOFF]                       nchar(1)             NULL,
   [ACCT_CHOFFPAID]                   nchar(1)             NULL,
   [LIMITREMOVED]                     nchar(1)             NULL,
   [LOANACCT_BUCODE]                  nvarchar(25)         NULL,
   [LOANACCT_LIMIT]                   decimal(18,3)        NULL,
   [HIGH_CREDIT]                      decimal(16,6)        NULL,
   [INTEREST_RATE]                    decimal(16,6)        NULL,
   [DEBTPAYOFFTHRUDT]                 datetime             NULL,
   [ORIGDBTDT]                        datetime             NULL,
   [LOANACCT_LIMIT_SUSP]              nchar(1)             NULL,
   [LOANACCT_DELINQUENCY]             nchar(1)             NULL,
   [LOANACCT_DAYSDELINQUENT]          decimal(18,3)        NULL,
   [LOANACCT_LOC]                     nchar(1)             NULL,
   [SECURED]                          nchar(1)             NULL,
   [MTHPYMT]                          decimal(18,3)        NULL,
   [LOANACCT_LIMIT_MAINTENANCEDT]     datetime             NULL,
   [LOANACCT_PREV_BAL]                decimal(18,3)        NULL,
   [LOANACCT_PREV_BAL_6MNTHS]         decimal(18,3)        NULL,
   [LINEOF_CREDITEXISTS]              nchar(1)             NULL,
   [LOANACCT_PRIMARY_HOLDER]          nchar(1)             NULL,
   [LOANACCT_TYPE]                    nvarchar(50)         NULL,
   [LOANACCT_OBLIGATION]              nvarchar(50)         NULL,
   [DEPACCT_PRIMARY_HOLDER]           nchar(1)             NULL,
   [ACCOUNT_QUALIFICATIONS]           nvarchar(50)         NULL,
   [ISONLINE_BANKINGUSER]             nchar(1)             NULL,
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
WITH (DISTRIBUTION = HASH ([CURRENT_CUSTOMERID]), CLUSTERED COLUMNSTORE INDEX)
;
