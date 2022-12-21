-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TL_LOAN_DATA]
AS
   SELECT
      x.[LNUM],
      HASHBYTES('SHA2_256', x.[ACH_CODE]) AS [ACH_CODE],
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
      HASHBYTES('SHA2_256', x.[EQUIFAX]) AS [EQUIFAX],
      x.[ESCROW_REQ],
      x.[EST_CASH_IN_HAND],
      x.[EST_HOUSING_PMT_CHG],
      x.[EST_P_L],
      x.[EST_TOTAL_PMT_CHG],
      HASHBYTES('SHA2_256', x.[EXPERIAN]) AS [EXPERIAN],
      HASHBYTES('SHA2_256', x.[FLD_ADDR1]) AS [FLD_ADDR1],
      HASHBYTES('SHA2_256', x.[FLD_ADD_CORRECT]) AS [FLD_ADD_CORRECT],
      HASHBYTES('SHA2_256', x.[FLD_CERT_AVAIL]) AS [FLD_CERT_AVAIL],
      HASHBYTES('SHA2_256', x.[FLD_CERT_CODE]) AS [FLD_CERT_CODE],
      HASHBYTES('SHA2_256', x.[FLD_CERT_CORRECT]) AS [FLD_CERT_CORRECT],
      x.[FLD_INS_COV_Y_N],
      x.[FLD_LOL_CODE],
      x.[FLD_REV_REQ_WAIVED],
      x.[GUAR_RATECODE],
      x.[GUAR_REPL_COST],
      x.[LTV_ADJ_CODE],
      x.[MAX_DTI_INPUT],
      HASHBYTES('SHA2_256', x.[MULTI_LOANS_TO_BOR]) AS [MULTI_LOANS_TO_BOR],
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
      HASHBYTES('SHA2_256', CAST(x.[TOTAL_PAYMENT] AS NVARCHAR(50))) AS [TOTAL_PAYMENT],
      HASHBYTES('SHA2_256', x.[TRANSUNION]) AS [TRANSUNION],
      x.[PROD_SHOW_ALL],
      x.[CUR_HOUSING_PMT],
      x.[OTHERINDEXTYPEDESC],
      x.[S_INDEX],
      A0.[Descript] AS [S_INDEX_X],
      x.[S_PAYEETYPE],
      A1.[Descript] AS [S_PAYEETYPE_X],
      HASHBYTES('SHA2_256', x.[PAYEETYPEOTHERDESC]) AS [PAYEETYPEOTHERDESC],
      x.[CLNUM_COUNTER],
      x.[LEAD_COUNTER],
      x.[INITIAL_DRAW_AMOUNT],
      x.[HLD_LEND_FEE],
      x.[ODD_DAYS_AMOUNT],
      x.[FULLY_AMORT_PYMT],
      x.[DMI_OWN_RIGHTS],
      A2.[Descript] AS [DMI_OWN_RIGHTS_X],
      x.[DMI_BILLING_MODE],
      A3.[Descript] AS [DMI_BILLING_MODE_X],
      x.[S_AUSUWTYPE],
      A4.[Descript] AS [S_AUSUWTYPE_X],
      x.[MSP_INVESTOR_ID],
      x.[MSP_INVESTOR_ID_OVERRIDE],
      x.[MSP_INVESTOR_CATEGORY],
      x.[MSP_INVESTOR_CATEGORY_OVERRIDE],
      HASHBYTES('SHA2_256', CAST(x.[FIRST_DISB_REC_AMT] AS NVARCHAR(50))) AS [FIRST_DISB_REC_AMT],
      x.[S_INTPRD_COMM_MET],
      A5.[Descript] AS [S_INTPRD_COMM_MET_X],
      x.[EXCLUDE_FROM_QRM],
      x.[READY_REDISCLSR],
      x.[S_WELCOME_CALL],
      A6.[Descript] AS [S_WELCOME_CALL_X],
      x.[LOAN_AMOUNT_TOLER],
      x.[MAX_APPR_RATE],
      x.[S_AUS_RESULT],
      A7.[Descript] AS [S_AUS_RESULT_X],
      x.[P_ADMINOVR],
      x.[P_CB_ADMINOVR],
      x.[P_COMPOVR],
      x.[P_CB_COMPOVR],
      HASHBYTES('SHA2_256', CAST(x.[REFI_PAYOFF_AMOUNT] AS NVARCHAR(50))) AS [REFI_PAYOFF_AMOUNT],
      x.[HARP_MI_REQUIRED],
      x.[NET_NEW_DOLLARS],
      x.[S_INIT_DISC_DELIVERY_MTHD],
      A8.[Descript] AS [S_INIT_DISC_DELIVERY_MTHD_X],
      x.[CONFIDENCE_SCR_HLMAI],
      x.[S_BRANCH_TYPE],
      A9.[Descript] AS [S_BRANCH_TYPE_X],
      x.[BRANCH_ID],
      x.[BRANCH_BANK_CODE],
      x.[BRANCH_COST_CENTER],
      x.[BOP_VERBIAGE_TXT],
      x.[EFCC_HIGH_RISK_INDICATOR],
      x.[PROMOTION_CODE],
      x.[ONBOARD_DISB_STATUS]
   FROM [clt_NetO].[GF_TL_LOAN_DATA] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_INDEX] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TL_LOAN_DATA' and A0.[COLUMNNAME] = 'S_INDEX'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_PAYEETYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TL_LOAN_DATA' and A1.[COLUMNNAME] = 'S_PAYEETYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[DMI_OWN_RIGHTS] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TL_LOAN_DATA' and A2.[COLUMNNAME] = 'DMI_OWN_RIGHTS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[DMI_BILLING_MODE] = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TL_LOAN_DATA' and A3.[COLUMNNAME] = 'DMI_BILLING_MODE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_AUSUWTYPE] = A4.[DBSYMBOL] AND A4.[TableName] = 'GF_TL_LOAN_DATA' and A4.[COLUMNNAME] = 'S_AUSUWTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_INTPRD_COMM_MET] = A5.[DBSYMBOL] AND A5.[TableName] = 'GF_TL_LOAN_DATA' and A5.[COLUMNNAME] = 'S_INTPRD_COMM_MET'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_WELCOME_CALL] = A6.[DBSYMBOL] AND A6.[TableName] = 'GF_TL_LOAN_DATA' and A6.[COLUMNNAME] = 'S_WELCOME_CALL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.[S_AUS_RESULT] = A7.[DBSYMBOL] AND A7.[TableName] = 'GF_TL_LOAN_DATA' and A7.[COLUMNNAME] = 'S_AUS_RESULT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.[S_INIT_DISC_DELIVERY_MTHD] = A8.[DBSYMBOL] AND A8.[TableName] = 'GF_TL_LOAN_DATA' and A8.[COLUMNNAME] = 'S_INIT_DISC_DELIVERY_MTHD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.[S_BRANCH_TYPE] = A9.[DBSYMBOL] AND A9.[TableName] = 'GF_TL_LOAN_DATA' and A9.[COLUMNNAME] = 'S_BRANCH_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
