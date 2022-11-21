-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TSR_PNP_IPG_BASE]
AS
   SELECT
      x.[INVESTOR_CODE],
      x.[PRODUCT_CODE],
      x.[PROGRAM_CODE],
      x.[PLAN_CODE],
      x.[PLAN_CODE_USAGE],
      x.[ENABLED],
      x.[DISABLED_DATE],
      x.[CREATED_DATE],
      x.[SECONDARY_MANAGE_TYPE],
      x.[SECONDARY_LOAN_TYPE],
      x.[SECONDARY_POOL_TYPE],
      x.[PREPAYMENT_PENALTY],
      x.[OVERAGE_ALLOWED_PCT],
      x.[SHORTAGE_ALLOWED_PCT],
      x.[OVERAGE_SPLIT_PCT],
      x.[SHORTAGE_SPLIT_PCT],
      x.[REQUIRES_MERS],
      x.[ONE_TIME_CLOSE_CONST],
      x.[INTERIM_CONSTRUCTION],
      x.[EZD_PRODUCT],
      x.[ASSUMABLE],
      x.[CONVERSION_PERIOD_START],
      x.[CONVERSION_PERIOD_END],
      x.[HMDA_REPORTABLE],
      x.[BUYDOWN_ALLOWED],
      x.[LOAN_PROGRAM],
      x.[HELOC_ALLOWED_YN],
      x.[LNDR_PD_MI_ALLOWED],
      x.[ALLOWS_DPA],
      x.[AVAILABLE_B_TO_C],
      x.[FIRST_LOCK_INDICATOR],
      x.[OLD_AGENCY_NUM_REQUIRED],
      x.[PROD_IDENTIFIER],
      x.[S_AUS_INDICATOR],
      A0.Descript AS [S_AUS_INDICATOR_Description],
      x.[S_SERVICE_TYPE_IND],
      A1.Descript AS [S_SERVICE_TYPE_IND_Description],
      x.[SERVICE_INT_INDICATOR],
      x.[SERVICE_LOC_CID],
      x.[SUB_PRIME_INDICATOR],
      x.[CONV_CONDITIONS],
      x.[CONV_FEE_AMOUNT],
      x.[CONV_FEE_PERC],
      x.[HLDRNTCE],
      x.[NODFALT],
      x.[PAYFEE],
      x.[SIGNDOC],
      x.[CONVOTHR],
      x.[INTEREST_ONLY_PRODUCT],
      x.[ODDDEFER],
      x.[S_SPEC_PRG],
      A2.Descript AS [S_SPEC_PRG_Description],
      x.[MI_REQUIRED],
      x.[CRA_REPORTABLE],
      x.[MIN_ALLOW_TERM],
      x.[MAX_ALLOW_TERM],
      x.[DEBT_PROTECT_OFFERED],
      x.[EVAL_ATR],
      x.[EVAL_QM],
      x.[GROUP_ID],
      x.[PREQUAL_ALLOWED_YN],
      x.[PREAPPROVAL_ALLOWED_YN],
      x.[S_LOANFIT_PURP_CAT],
      A3.Descript AS [S_LOANFIT_PURP_CAT_Description],
      x.[S_LOANFIT_PROD_CAT],
      A4.Descript AS [S_LOANFIT_PROD_CAT_Description],
      x.[S_LOANFIT_LIEN_CAT],
      A5.Descript AS [S_LOANFIT_LIEN_CAT_Description],
      x.[LOANFIT_CATEGORY_POSN],
      x.[LOANFIT_DISPLAY_POSN],
      x.[S_LOANFIT_AMT_GROUP],
      A6.Descript AS [S_LOANFIT_AMT_GROUP_Description],
      x.[S_LOANFIT_LTV_GROUP],
      A7.Descript AS [S_LOANFIT_LTV_GROUP_Description],
      x.[LOANFIT_MIN_LOAN],
      x.[LOANFIT_MAX_LOAN],
      x.[LOANFIT_MIN_LTV],
      x.[LOANFIT_MAX_LTV],
      x.[LOANFIT_ANN_FEE],
      x.[LOANFIT_TERM_MOS],
      x.[LOANFIT_IS_ARM_YN],
      x.[RATE_PRICE_RQST_YN],
      x.[LOANFIT_MAX_DTI],
      x.[LOANFIT_MIN_POINTS],
      x.[LOANFIT_MAX_POINTS],
      x.[MBOT_PRODUCTID],
      x.[TARGET_INVESTOR],
      x.[MILT_LENDING_ACT],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE],
      x.[S_CONST_PROGRAM],
      A8.Descript AS [S_CONST_PROGRAM_Description],
      x.[CONST_MONTHS],
      x.[IPG_RENOVA_PROD],
      x.[DOCMAGIC_PLAN_CODE],
      x.[IPG_GSE_PROD],
      x.[DAYS_FIRST_FLOAT_ELIG],
      x.[DAYS_FINAL_FLOAT_ELIG],
      x.[IPG_FINAL_INVESTOR],
      x.[S_ASSUMABILITY_FEATURE],
      A9.Descript AS [S_ASSUMABILITY_FEATURE_Description],
      x.[S_IPG_BUYDWN],
      A10.Descript AS [S_IPG_BUYDWN_Description],
      x.[S_BUYDWN_CNTRBTR],
      A11.Descript AS [S_BUYDWN_CNTRBTR_Description]
   FROM [clt_NetO].[GF_TSR_PNP_IPG_BASE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_AUS_INDICATOR = A0.DBSYMBOL AND A0.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A0.[COLUMNNAME] = 'S_AUS_INDICATOR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_SERVICE_TYPE_IND = A1.DBSYMBOL AND A1.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A1.[COLUMNNAME] = 'S_SERVICE_TYPE_IND'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_SPEC_PRG = A2.DBSYMBOL AND A2.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A2.[COLUMNNAME] = 'S_SPEC_PRG'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_LOANFIT_PURP_CAT = A3.DBSYMBOL AND A3.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A3.[COLUMNNAME] = 'S_LOANFIT_PURP_CAT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_LOANFIT_PROD_CAT = A4.DBSYMBOL AND A4.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A4.[COLUMNNAME] = 'S_LOANFIT_PROD_CAT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_LOANFIT_LIEN_CAT = A5.DBSYMBOL AND A5.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A5.[COLUMNNAME] = 'S_LOANFIT_LIEN_CAT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_LOANFIT_AMT_GROUP = A6.DBSYMBOL AND A6.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A6.[COLUMNNAME] = 'S_LOANFIT_AMT_GROUP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_LOANFIT_LTV_GROUP = A7.DBSYMBOL AND A7.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A7.[COLUMNNAME] = 'S_LOANFIT_LTV_GROUP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.S_CONST_PROGRAM = A8.DBSYMBOL AND A8.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A8.[COLUMNNAME] = 'S_CONST_PROGRAM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.S_ASSUMABILITY_FEATURE = A9.DBSYMBOL AND A9.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A9.[COLUMNNAME] = 'S_ASSUMABILITY_FEATURE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.S_IPG_BUYDWN = A10.DBSYMBOL AND A10.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A10.[COLUMNNAME] = 'S_IPG_BUYDWN'
      LEFT JOIN [clt_NetO].[SymbolLookup] A11 on x.S_BUYDWN_CNTRBTR = A11.DBSYMBOL AND A11.[TableName] = 'GF_TSR_PNP_IPG_BASE' and A11.[COLUMNNAME] = 'S_BUYDWN_CNTRBTR'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
