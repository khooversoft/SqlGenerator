-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[HELOC]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [INTRORT]                          decimal(16,6)        NULL,
   [MINITADV]                         decimal(18,3)        NULL,
   [MOTHADV]                          decimal(18,3)        NULL,
   [DPR]                              decimal(16,6)        NULL,
   [DRAWPER]                          int                  NULL,
   [WHENDUE]                          nvarchar(20)         NULL,
   [TAXLTV]                           decimal(16,6)        NULL,
   [SLNHOLD]                          nvarchar(35)         NULL,
   [DRAWEXP]                          datetime             NULL,
   [TAXASAMT]                         decimal(18,3)        NULL,
   [CTAXLTV]                          decimal(16,6)        NULL,
   [NUM_CARDS]                        decimal(16,6)        NULL,
   [S_LOCTYPE]                        nvarchar(8)          NULL,
   [ANNUAL_FEE]                       decimal(16,6)        NULL,
   [REPAY_MTHS]                       int                  NULL,
   [TERMIN_FEE]                       decimal(18,3)        NULL,
   [DRAWACCESS_FEE]                   decimal(16,6)        NULL,
   [S_FUNDS_TO_BE_DRAWN]              nvarchar(8)          NULL,
   [OVERDRAFT_PROTECTION]             nchar(1)             NULL,
   [ODP_ACCOUNT_NUMBER]               nvarchar(30)         NULL,
   [ODP_ROUTING_NUMBER]               nvarchar(30)         NULL,
   [ANNUAL_CALC_OVR]                  decimal(16,6)        NULL,
   [TERM_CALC_OVR]                    decimal(18,3)        NULL,
   [S_REPAYMENT_METHOD]               nvarchar(8)          NULL,
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
