-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TL_LOAN_DATA]
AS
   SELECT
      x.[LNUM],
      x.[ACH_CODE],
      x.[ADJ_RT_001],
      x.[AGREE_WITH_UW_DECISION],
      x.[AGREE_W_UW_DECISION],
      x.[ANNUAL_CAP],
      x.[APPR_MATCH_NOTE],
      x.[BRANCH_CODE],
      x.[BROKER_SIGN],
      x.[CASHOUT_FLG],
      x.[COST_NEW],
      x.[COUNTEROFFER_TYPE],
      x.[CREDCO],
      x.[DETERMINATION],
      x.[EQUIFAX],
      x.[ESCROW_REQ],
      x.[EST_CASH_IN_HAND],
      x.[EST_HOUSING_PMT_CHG],
      x.[EST_P_L],
      x.[EST_TOTAL_PMT_CHG],
      x.[EXPERIAN],
      x.[FLD_ADDR1],
      x.[FLD_ADD_CORRECT],
      x.[FLD_CERT_AVAIL],
      x.[FLD_CERT_CODE],
      x.[FLD_CERT_CORRECT],
      x.[FLD_INS_COV_Y_N],
      x.[FLD_LOL_CODE],
      x.[FLD_REV_REQ_WAIVED],
      x.[GUAR_RATECODE],
      x.[GUAR_REPL_COST],
      x.[LTV_ADJ_CODE],
      x.[MAX_DTI_INPUT],
      x.[MULTI_LOANS_TO_BOR],
      x.[NBR_STMENTS],
      x.[NONARMLENGTH_TRANS],
      x.[OUTSIDE_AGENCY],
      x.[PAY_OTHER_DEBTS],
      x.[PERF_MORT_CODE],
      x.[POINT_OVERRIDE],
      x.[PREPAY_PERC],
      x.[PREPAY_TERM],
      x.[PRICE_EXC_DESC],
      x.[RATE_TEST],
      x.[REQ_FROM_BOR_COM],
      x.[SELLER_CONCES_DLR],
      x.[SELLER_CONCES_PERC],
      x.[SITE_CONDO],
      x.[STMT_TYPE],
      x.[SVCS_ALTA],
      x.[SVCS_CLTA],
      x.[SVCS_FLAG],
      x.[SVCS_FLAG65],
      x.[SVCS_FULL],
      x.[SVCS_SUB],
      x.[MAX_POINTS],
      x.[MIN_POINTS],
      x.[POINT_OBJECTIVE],
      x.[PROP_REG],
      x.[SUBORD_MORT],
      x.[TOTAL_CALC_POINTS],
      x.[TOTAL_PAYMENT],
      x.[TRANSUNION],
      x.[PROD_SHOW_ALL],
      x.[CUR_HOUSING_PMT],
      x.[OTHERINDEXTYPEDESC],
      x.[S_INDEX],
      x.[S_PAYEETYPE],
      x.[PAYEETYPEOTHERDESC],
      x.[CLNUM_COUNTER],
      x.[LEAD_COUNTER],
      x.[INITIAL_DRAW_AMOUNT],
      x.[HLD_LEND_FEE],
      x.[ODD_DAYS_AMOUNT],
      x.[FULLY_AMORT_PYMT],
      x.[DMI_OWN_RIGHTS],
      x.[DMI_BILLING_MODE],
      x.[S_AUSUWTYPE],
      x.[MSP_INVESTOR_ID],
      x.[MSP_INVESTOR_ID_OVERRIDE],
      x.[MSP_INVESTOR_CATEGORY],
      x.[MSP_INVESTOR_CATEGORY_OVERRIDE],
      x.[FIRST_DISB_REC_AMT],
      x.[S_INTPRD_COMM_MET],
      x.[EXCLUDE_FROM_QRM],
      x.[READY_REDISCLSR],
      x.[S_WELCOME_CALL],
      x.[LOAN_AMOUNT_TOLER],
      x.[MAX_APPR_RATE],
      x.[S_AUS_RESULT],
      x.[P_ADMINOVR],
      x.[P_CB_ADMINOVR],
      x.[P_COMPOVR],
      x.[P_CB_COMPOVR],
      x.[REFI_PAYOFF_AMOUNT],
      x.[HARP_MI_REQUIRED],
      x.[NET_NEW_DOLLARS],
      x.[S_INIT_DISC_DELIVERY_MTHD],
      x.[CONFIDENCE_SCR_HLMAI],
      x.[S_BRANCH_TYPE],
      x.[BRANCH_ID],
      x.[BRANCH_BANK_CODE],
      x.[BRANCH_COST_CENTER],
      x.[BOP_VERBIAGE_TXT],
      x.[EFCC_HIGH_RISK_INDICATOR],
      x.[PROMOTION_CODE],
      x.[ONBOARD_DISB_STATUS]
   FROM [clt_NetO].[GF_TL_LOAN_DATA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;