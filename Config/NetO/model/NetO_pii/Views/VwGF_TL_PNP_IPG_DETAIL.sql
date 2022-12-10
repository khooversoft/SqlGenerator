-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TL_PNP_IPG_DETAIL]
AS
   SELECT
      x.[LNUM],
      x.[INVESTOR_CODE],
      A0.[INVESTORNAME] AS [INVESTOR_CODE_X],
      x.[PRODUCT_CODE],
      A1.[PRODUCTNAME] AS [PRODUCT_CODE_X],
      x.[PROGRAM_CODE],
      A2.[PROGRAMNAME] AS [PROGRAM_CODE_X],
      x.[PRICE_GROUP_CODE],
      A3.[PRICING_GROUP_NAME] AS [PRICE_GROUP_CODE_X],
      x.[IPG_NAME],
      x.[S_SEC_MANAGE_TYPE],
      x.[S_SEC_LOAN_TYPE],
      x.[S_SEC_POOL_TYPE],
      A4.[Descript] AS [S_SEC_POOL_TYPE_X],
      x.[S_PREPAY_PEN],
      A5.[Descript] AS [S_PREPAY_PEN_X],
      x.[OVER_ALLOW_PCT],
      x.[SHORT_ALLOW_PCT],
      x.[OVER_SPLIT_PCT],
      x.[SHORT_SPLIT_PCT],
      x.[REQUIRES_MERS],
      x.[REQUIRES_MI],
      x.[ONE_TIMECLOSE_CONST],
      x.[INTERIM_CONSTRUCTION],
      x.[ASSUMABLE],
      x.[CONV_PERIOD_ST],
      x.[CONV_PERIOD_END],
      x.[EZD_PRODUCT],
      x.[HMDA_REPORTABLE],
      x.[BUYDOWN_ALLOWED],
      x.[HELOC_ALLOW_YN],
      x.[PROD_PROF_TRUE],
      x.[PRICE_NAME],
      x.[ALLOW_DPA],
      x.[AVAIL_BTOC],
      x.[FIRST_LOCK_IND],
      x.[OLD_AGENCY_NUM_IND],
      x.[PRODUCT_IDENTIFIER],
      x.[S_AUS_IND],
      A6.[Descript] AS [S_AUS_IND_X],
      x.[S_SERVICE_TYPE],
      x.[SERVICING_INTERFACE_IND],
      x.[SERVICING_LOCATION],
      x.[SUB_PRIME_IND],
      x.[MI_REQUIRE],
      x.[INTEREST_ONLY_PRODUCT],
      x.[S_SPEC_PROG],
      A7.[Descript] AS [S_SPEC_PROG_X],
      x.[CRA_REPORT],
      x.[INV_CODE_OVR],
      A8.[INVESTORNAME] AS [INV_CODE_OVR_X],
      x.[INV_PROD_CODE_OVR],
      A9.[PRODUCTNAME] AS [INV_PROD_CODE_OVR_X],
      x.[INV_PROG_CODE_OVR],
      A10.[PROGRAMNAME] AS [INV_PROG_CODE_OVR_X],
      x.[INV_NAME_OVR],
      x.[INV_PROD_NAME_OVR],
      x.[INV_PROG_NAME_OVR],
      x.[INV_PRICE_NAME_OVR],
      x.[INV_PRICE_CODE_OVR],
      A11.[PRICING_GROUP_NAME] AS [INV_PRICE_CODE_OVR_X],
      x.[MIN_ALLOW_LN_TERM],
      x.[MAX_ALLOW_LN_TERM],
      x.[ODDDAYSDEFER],
      x.[OVRD_PROD_RULES],
      x.[DEBT_PROTECT_OFFERED],
      x.[EVAL_ATR],
      x.[EVAL_QM],
      x.[APPLY_MLA_RULES],
      x.[LNDR_PD_MI_ALLOWED],
      x.[S_ASSUMABILITY_FEATURE],
      A12.[Descript] AS [S_ASSUMABILITY_FEATURE_X]
   FROM [clt_NetO].[GF_TL_PNP_IPG_DETAIL] x
      LEFT JOIN [clt_NetO].[GF_TS_PNP_IPG_INVESTOR] A0 on x.[INVESTOR_CODE] = A0.[INVESTORCODE]
      LEFT JOIN [clt_NetO].[GF_TS_PNP_IPG_PRODUCT] A1 on x.[PRODUCT_CODE] = A1.[PRODUCTCODE]
      LEFT JOIN [clt_NetO].[GF_TS_PNP_IPG_PROGRAM] A2 on x.[PROGRAM_CODE] = A2.[PROGRAMCODE]
      LEFT JOIN [clt_NetO].[GF_TS_PNP_IPG_PRICING] A3 on x.[PRICE_GROUP_CODE] = A3.[PRICING_GROUP_CODE]
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_SEC_POOL_TYPE] = A4.[DBSYMBOL] AND A4.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A4.[COLUMNNAME] = 'S_SEC_POOL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_PREPAY_PEN] = A5.[DBSYMBOL] AND A5.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A5.[COLUMNNAME] = 'S_PREPAY_PEN'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_AUS_IND] = A6.[DBSYMBOL] AND A6.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A6.[COLUMNNAME] = 'S_AUS_IND'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.[S_SPEC_PROG] = A7.[DBSYMBOL] AND A7.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A7.[COLUMNNAME] = 'S_SPEC_PROG'
      LEFT JOIN [clt_NetO].[GF_TS_PNP_IPG_INVESTOR] A8 on x.[INV_CODE_OVR] = A8.[INVESTORCODE]
      LEFT JOIN [clt_NetO].[GF_TS_PNP_IPG_PRODUCT] A9 on x.[INV_PROD_CODE_OVR] = A9.[PRODUCTCODE]
      LEFT JOIN [clt_NetO].[GF_TS_PNP_IPG_PROGRAM] A10 on x.[INV_PROG_CODE_OVR] = A10.[PROGRAMCODE]
      LEFT JOIN [clt_NetO].[GF_TS_PNP_IPG_PRICING] A11 on x.[INV_PRICE_CODE_OVR] = A11.[PRICING_GROUP_CODE]
      LEFT JOIN [clt_NetO].[SymbolLookup] A12 on x.[S_ASSUMABILITY_FEATURE] = A12.[DBSYMBOL] AND A12.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A12.[COLUMNNAME] = 'S_ASSUMABILITY_FEATURE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
