-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TSR_PNP_IPG_BASE]
(
   [INVESTOR_CODE]                    nvarchar(4)          NOT NULL,
   [PRODUCT_CODE]                     nvarchar(4)          NOT NULL,
   [PROGRAM_CODE]                     nvarchar(4)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [PLAN_CODE]                        nvarchar(20)         NULL,
   [PLAN_CODE_USAGE]                  nvarchar(20)         NULL,
   [ENABLED]                          nchar(1)             NULL,
   [DISABLED_DATE]                    datetime             NULL,
   [CREATED_DATE]                     datetime             NULL,
   [SECONDARY_MANAGE_TYPE]            nvarchar(8)          NULL,
   [SECONDARY_LOAN_TYPE]              nvarchar(8)          NULL,
   [SECONDARY_POOL_TYPE]              nvarchar(8)          NULL,
   [PREPAYMENT_PENALTY]               nvarchar(8)          NULL,
   [OVERAGE_ALLOWED_PCT]              decimal(16,6)        NULL,
   [SHORTAGE_ALLOWED_PCT]             decimal(16,6)        NULL,
   [OVERAGE_SPLIT_PCT]                decimal(16,6)        NULL,
   [SHORTAGE_SPLIT_PCT]               decimal(16,6)        NULL,
   [REQUIRES_MERS]                    nchar(1)             NULL,
   [ONE_TIME_CLOSE_CONST]             nchar(1)             NULL,
   [INTERIM_CONSTRUCTION]             nchar(1)             NULL,
   [EZD_PRODUCT]                      nchar(1)             NULL,
   [ASSUMABLE]                        nchar(1)             NULL,
   [CONVERSION_PERIOD_START]          smallint             NULL,
   [CONVERSION_PERIOD_END]            smallint             NULL,
   [HMDA_REPORTABLE]                  nchar(1)             NULL,
   [BUYDOWN_ALLOWED]                  nchar(1)             NULL,
   [LOAN_PROGRAM]                     nvarchar(8)          NULL,
   [HELOC_ALLOWED_YN]                 nchar(1)             NULL,
   [LNDR_PD_MI_ALLOWED]               nchar(1)             NULL,
   [ALLOWS_DPA]                       nchar(1)             NULL,
   [AVAILABLE_B_TO_C]                 nchar(1)             NULL,
   [FIRST_LOCK_INDICATOR]             nchar(1)             NULL,
   [OLD_AGENCY_NUM_REQUIRED]          nchar(1)             NULL,
   [PROD_IDENTIFIER]                  nvarchar(80)         NULL,
   [S_AUS_INDICATOR]                  nvarchar(8)          NULL,
   [S_SERVICE_TYPE_IND]               nvarchar(8)          NULL,
   [SERVICE_INT_INDICATOR]            nvarchar(30)         NULL,
   [SERVICE_LOC_CID]                  nvarchar(20)         NULL,
   [SUB_PRIME_INDICATOR]              nchar(1)             NULL,
   [CONV_CONDITIONS]                  nvarchar(254)        NULL,
   [CONV_FEE_AMOUNT]                  decimal(18,3)        NULL,
   [CONV_FEE_PERC]                    decimal(16,6)        NULL,
   [HLDRNTCE]                         nchar(1)             NULL,
   [NODFALT]                          nchar(1)             NULL,
   [PAYFEE]                           nchar(1)             NULL,
   [SIGNDOC]                          nchar(1)             NULL,
   [CONVOTHR]                         nchar(1)             NULL,
   [INTEREST_ONLY_PRODUCT]            nchar(1)             NULL,
   [ODDDEFER]                         nchar(1)             NULL,
   [S_SPEC_PRG]                       nvarchar(8)          NULL,
   [MI_REQUIRED]                      nchar(1)             NULL,
   [CRA_REPORTABLE]                   nchar(1)             NULL,
   [MIN_ALLOW_TERM]                   int                  NULL,
   [MAX_ALLOW_TERM]                   int                  NULL,
   [DEBT_PROTECT_OFFERED]             nchar(1)             NULL,
   [EVAL_ATR]                         nchar(1)             NULL,
   [EVAL_QM]                          nchar(1)             NULL,
   [GROUP_ID]                         int                  NULL,
   [PREQUAL_ALLOWED_YN]               nchar(1)             NULL,
   [PREAPPROVAL_ALLOWED_YN]           nchar(1)             NULL,
   [S_LOANFIT_PURP_CAT]               nvarchar(8)          NULL,
   [S_LOANFIT_PROD_CAT]               nvarchar(8)          NULL,
   [S_LOANFIT_LIEN_CAT]               nvarchar(8)          NULL,
   [LOANFIT_CATEGORY_POSN]            int                  NULL,
   [LOANFIT_DISPLAY_POSN]             int                  NULL,
   [S_LOANFIT_AMT_GROUP]              nvarchar(8)          NULL,
   [S_LOANFIT_LTV_GROUP]              nvarchar(8)          NULL,
   [LOANFIT_MIN_LOAN]                 numeric(16,6)        NULL,
   [LOANFIT_MAX_LOAN]                 numeric(16,6)        NULL,
   [LOANFIT_MIN_LTV]                  numeric(16,6)        NULL,
   [LOANFIT_MAX_LTV]                  numeric(16,6)        NULL,
   [LOANFIT_ANN_FEE]                  numeric(16,6)        NULL,
   [LOANFIT_TERM_MOS]                 int                  NULL,
   [LOANFIT_IS_ARM_YN]                nchar(1)             NULL,
   [RATE_PRICE_RQST_YN]               nchar(1)             NULL,
   [LOANFIT_MAX_DTI]                  int                  NULL,
   [LOANFIT_MIN_POINTS]               numeric(16,6)        NULL,
   [LOANFIT_MAX_POINTS]               numeric(16,6)        NULL,
   [MBOT_PRODUCTID]                   nvarchar(20)         NULL,
   [TARGET_INVESTOR]                  int                  NULL,
   [MILT_LENDING_ACT]                 nchar(1)             NULL,
   [SRCENV]                           nvarchar(5)          NULL,
   [REC_CUSTOM]                       nchar(1)             NULL,
   [CREATE_DATE]                      datetime             NULL,
   [MODIFY_DATE]                      datetime             NULL,
   [S_CONST_PROGRAM]                  nvarchar(8)          NULL,
   [CONST_MONTHS]                     int                  NULL,
   [IPG_RENOVA_PROD]                  nchar(1)             NULL,
   [DOCMAGIC_PLAN_CODE]               nvarchar(25)         NULL,
   [IPG_GSE_PROD]                     nchar(1)             NULL,
   [DAYS_FIRST_FLOAT_ELIG]            int                  NULL,
   [DAYS_FINAL_FLOAT_ELIG]            int                  NULL,
   [IPG_FINAL_INVESTOR]               nvarchar(20)         NULL,
   [S_ASSUMABILITY_FEATURE]           nvarchar(8)          NULL,
   [S_IPG_BUYDWN]                     nvarchar(8)          NULL,
   [S_BUYDWN_CNTRBTR]                 nvarchar(8)          NULL,
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
WITH (DISTRIBUTION = HASH ([INVESTOR_CODE]), CLUSTERED COLUMNSTORE INDEX)
;