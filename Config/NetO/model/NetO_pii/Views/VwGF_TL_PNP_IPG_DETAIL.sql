-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TL_PNP_IPG_DETAIL]
AS
   SELECT
      x.[LNUM],
      x.[INVESTOR_CODE],
      x.[PRODUCT_CODE],
      x.[PROGRAM_CODE],
      x.[PRICE_GROUP_CODE],
      x.[IPG_NAME],
      x.[S_SEC_MANAGE_TYPE],
      A0.Descript AS [S_SEC_MANAGE_TYPE_Description],
      x.[S_SEC_LOAN_TYPE],
      A1.Descript AS [S_SEC_LOAN_TYPE_Description],
      x.[S_SEC_POOL_TYPE],
      A2.Descript AS [S_SEC_POOL_TYPE_Description],
      x.[S_PREPAY_PEN],
      A3.Descript AS [S_PREPAY_PEN_Description],
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
      A4.Descript AS [S_AUS_IND_Description],
      x.[S_SERVICE_TYPE],
      A5.Descript AS [S_SERVICE_TYPE_Description],
      x.[SERVICING_INTERFACE_IND],
      x.[SERVICING_LOCATION],
      x.[SUB_PRIME_IND],
      x.[MI_REQUIRE],
      x.[INTEREST_ONLY_PRODUCT],
      x.[S_SPEC_PROG],
      A6.Descript AS [S_SPEC_PROG_Description],
      x.[CRA_REPORT],
      x.[INV_CODE_OVR],
      x.[INV_PROD_CODE_OVR],
      x.[INV_PROG_CODE_OVR],
      x.[INV_NAME_OVR],
      x.[INV_PROD_NAME_OVR],
      x.[INV_PROG_NAME_OVR],
      x.[INV_PRICE_NAME_OVR],
      x.[INV_PRICE_CODE_OVR],
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
      A7.Descript AS [S_ASSUMABILITY_FEATURE_Description]
   FROM [clt_NetO].[GF_TL_PNP_IPG_DETAIL] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_SEC_MANAGE_TYPE = A0.DBSYMBOL AND A0.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A0.[COLUMNNAME] = 'S_SEC_MANAGE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_SEC_LOAN_TYPE = A1.DBSYMBOL AND A1.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A1.[COLUMNNAME] = 'S_SEC_LOAN_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_SEC_POOL_TYPE = A2.DBSYMBOL AND A2.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A2.[COLUMNNAME] = 'S_SEC_POOL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_PREPAY_PEN = A3.DBSYMBOL AND A3.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A3.[COLUMNNAME] = 'S_PREPAY_PEN'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_AUS_IND = A4.DBSYMBOL AND A4.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A4.[COLUMNNAME] = 'S_AUS_IND'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_SERVICE_TYPE = A5.DBSYMBOL AND A5.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A5.[COLUMNNAME] = 'S_SERVICE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_SPEC_PROG = A6.DBSYMBOL AND A6.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A6.[COLUMNNAME] = 'S_SPEC_PROG'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_ASSUMABILITY_FEATURE = A7.DBSYMBOL AND A7.[TableName] = 'GF_TL_PNP_IPG_DETAIL' and A7.[COLUMNNAME] = 'S_ASSUMABILITY_FEATURE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
