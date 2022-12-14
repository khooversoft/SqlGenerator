-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TL_LOAN_DATA]
(
   [LNUM]                               nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]       datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]                datetime2(7)         NULL,
   [ACH_CODE]                           nchar(1)             NULL,
   [ADJ_RT_001]                         nchar(1)             NULL,
   [AGREE_WITH_UW_DECISION]             nchar(1)             NULL,
   [AGREE_W_UW_DECISION]                nchar(1)             NULL,
   [ANNUAL_CAP]                         decimal(18,3)        NULL,
   [APPR_MATCH_NOTE]                    nchar(1)             NULL,
   [BRANCH_CODE]                        nvarchar(3)          NULL,
   [BROKER_SIGN]                        nchar(1)             NULL,
   [CASHOUT_FLG]                        nchar(1)             NULL,
   [COST_NEW]                           decimal(18,3)        NULL,
   [COUNTEROFFER_TYPE]                  nvarchar(8)          NULL,
   [CREDCO]                             nchar(1)             NULL,
   [DETERMINATION]                      nvarchar(8)          NULL,
   [EQUIFAX]                            nchar(1)             NULL,
   [ESCROW_REQ]                         nchar(1)             NULL,
   [EST_CASH_IN_HAND]                   decimal(18,3)        NULL,
   [EST_HOUSING_PMT_CHG]                decimal(18,3)        NULL,
   [EST_P_L]                            decimal(18,3)        NULL,
   [EST_TOTAL_PMT_CHG]                  decimal(18,3)        NULL,
   [EXPERIAN]                           nchar(1)             NULL,
   [FLD_ADDR1]                          nvarchar(35)         NULL,
   [FLD_ADD_CORRECT]                    nchar(1)             NULL,
   [FLD_CERT_AVAIL]                     nchar(1)             NULL,
   [FLD_CERT_CODE]                      nvarchar(20)         NULL,
   [FLD_CERT_CORRECT]                   nchar(1)             NULL,
   [FLD_INS_COV_Y_N]                    nchar(1)             NULL,
   [FLD_LOL_CODE]                       nvarchar(20)         NULL,
   [FLD_REV_REQ_WAIVED]                 nchar(1)             NULL,
   [GUAR_RATECODE]                      nvarchar(10)         NULL,
   [GUAR_REPL_COST]                     nchar(1)             NULL,
   [LTV_ADJ_CODE]                       nvarchar(15)         NULL,
   [MAX_DTI_INPUT]                      decimal(16,6)        NULL,
   [MULTI_LOANS_TO_BOR]                 nchar(1)             NULL,
   [NBR_STMENTS]                        smallint             NULL,
   [NONARMLENGTH_TRANS]                 nchar(1)             NULL,
   [OUTSIDE_AGENCY]                     nchar(1)             NULL,
   [PAY_OTHER_DEBTS]                    nchar(1)             NULL,
   [PERF_MORT_CODE]                     smallint             NULL,
   [POINT_OVERRIDE]                     decimal(16,6)        NULL,
   [PREPAY_PERC]                        decimal(16,6)        NULL,
   [PREPAY_TERM]                        nvarchar(8)          NULL,
   [PRICE_EXC_DESC]                     nvarchar(80)         NULL,
   [RATE_TEST]                          decimal(16,6)        NULL,
   [REQ_FROM_BOR_COM]                   nvarchar(80)         NULL,
   [SELLER_CONCES_DLR]                  decimal(18,3)        NULL,
   [SELLER_CONCES_PERC]                 decimal(16,6)        NULL,
   [SITE_CONDO]                         nchar(1)             NULL,
   [STMT_TYPE]                          nvarchar(8)          NULL,
   [SVCS_ALTA]                          nchar(1)             NULL,
   [SVCS_CLTA]                          nchar(1)             NULL,
   [SVCS_FLAG]                          nchar(1)             NULL,
   [SVCS_FLAG65]                        nchar(1)             NULL,
   [SVCS_FULL]                          nchar(1)             NULL,
   [SVCS_SUB]                           nchar(1)             NULL,
   [MAX_POINTS]                         nvarchar(8)          NULL,
   [MIN_POINTS]                         nvarchar(8)          NULL,
   [POINT_OBJECTIVE]                    nvarchar(8)          NULL,
   [PROP_REG]                           nvarchar(8)          NULL,
   [SUBORD_MORT]                        nvarchar(8)          NULL,
   [TOTAL_CALC_POINTS]                  decimal(16,6)        NULL,
   [TOTAL_PAYMENT]                      decimal(16,6)        NULL,
   [TRANSUNION]                         nchar(1)             NULL,
   [PROD_SHOW_ALL]                      nchar(1)             NULL,
   [CUR_HOUSING_PMT]                    decimal(16,6)        NULL,
   [OTHERINDEXTYPEDESC]                 nvarchar(80)         NULL,
   [S_INDEX]                            nvarchar(8)          NULL,
   [S_PAYEETYPE]                        nvarchar(8)          NULL,
   [PAYEETYPEOTHERDESC]                 nvarchar(255)        NULL,
   [CLNUM_COUNTER]                      int                  NULL,
   [LEAD_COUNTER]                       int                  NULL,
   [INITIAL_DRAW_AMOUNT]                decimal(18,3)        NULL,
   [HLD_LEND_FEE]                       nchar(1)             NULL,
   [ODD_DAYS_AMOUNT]                    decimal(18,3)        NULL,
   [FULLY_AMORT_PYMT]                   decimal(18,3)        NULL,
   [DMI_OWN_RIGHTS]                     nvarchar(8)          NULL,
   [DMI_BILLING_MODE]                   nvarchar(8)          NULL,
   [S_AUSUWTYPE]                        nvarchar(8)          NULL,
   [MSP_INVESTOR_ID]                    nvarchar(4)          NULL,
   [MSP_INVESTOR_ID_OVERRIDE]           nvarchar(4)          NULL,
   [MSP_INVESTOR_CATEGORY]              nvarchar(4)          NULL,
   [MSP_INVESTOR_CATEGORY_OVERRIDE]     nvarchar(4)          NULL,
   [FIRST_DISB_REC_AMT]                 decimal(18,3)        NULL,
   [S_INTPRD_COMM_MET]                  nvarchar(8)          NULL,
   [EXCLUDE_FROM_QRM]                   nchar(1)             NULL,
   [READY_REDISCLSR]                    nchar(1)             NULL,
   [S_WELCOME_CALL]                     nvarchar(8)          NULL,
   [LOAN_AMOUNT_TOLER]                  nchar(1)             NULL,
   [MAX_APPR_RATE]                      numeric(16,6)        NULL,
   [S_AUS_RESULT]                       nvarchar(8)          NULL,
   [P_ADMINOVR]                         numeric(16,6)        NULL,
   [P_CB_ADMINOVR]                      nchar(1)             NULL,
   [P_COMPOVR]                          numeric(16,6)        NULL,
   [P_CB_COMPOVR]                       nchar(1)             NULL,
   [REFI_PAYOFF_AMOUNT]                 decimal(16,6)        NULL,
   [HARP_MI_REQUIRED]                   nchar(1)             NULL,
   [NET_NEW_DOLLARS]                    decimal(16,6)        NULL,
   [S_INIT_DISC_DELIVERY_MTHD]          nvarchar(8)          NULL,
   [CONFIDENCE_SCR_HLMAI]               decimal(8,2)         NULL,
   [S_BRANCH_TYPE]                      nvarchar(8)          NULL,
   [BRANCH_ID]                          nvarchar(8)          NULL,
   [BRANCH_BANK_CODE]                   nvarchar(8)          NULL,
   [BRANCH_COST_CENTER]                 nvarchar(8)          NULL,
   [BOP_VERBIAGE_TXT]                   nvarchar(2000)       NULL,
   [EFCC_HIGH_RISK_INDICATOR]           nchar(1)             NULL,
   [PROMOTION_CODE]                     nvarchar(20)         NULL,
   [ONBOARD_DISB_STATUS]                nvarchar(50)         NULL,
   [ASAP_ROW_HASH]                      nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                      nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                  datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                  datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                    nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                   nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                    nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                  nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]                 datetime2(7)         NULL,
   [ASAP_SRC_NAME]                      nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([LNUM]), CLUSTERED COLUMNSTORE INDEX)
;
