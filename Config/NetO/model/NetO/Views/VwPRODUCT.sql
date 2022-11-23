-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwPRODUCT]
AS
   SELECT
      x.[LNUM],
      x.[S_PROD],
      A0.Descript AS [S_PROD_Description],
      x.[S_RATE],
      A1.Descript AS [S_RATE_Description],
      x.[S_RTCODE],
      A2.Descript AS [S_RTCODE_Description],
      x.[OLA],
      x.[LTV],
      x.[S_LCKTYP],
      A3.Descript AS [S_LCKTYP_Description],
      x.[LOCKDATE],
      x.[LOCKEXP],
      x.[LOCKDAYS],
      x.[INTRATE],
      x.[LOANTERM],
      x.[S_LCKEXP],
      A4.Descript AS [S_LCKEXP_Description],
      x.[S_RATIO],
      A5.Descript AS [S_RATIO_Description],
      x.[S_BYDOWN],
      A6.Descript AS [S_BYDOWN_Description],
      x.[S_MIPLAN],
      A7.Descript AS [S_MIPLAN_Description],
      x.[FMIRFLAG],
      x.[FMIRFCTR],
      x.[BALLFLAG],
      x.[AMTERM],
      x.[PIPMT],
      x.[S_PMTSTR],
      A8.Descript AS [S_PMTSTR_Description],
      x.[S_DISC],
      A9.Descript AS [S_DISC_Description],
      x.[S_ORIG],
      A10.Descript AS [S_ORIG_Description],
      x.[BASELA],
      x.[LOCKED],
      x.[S_QRATE],
      A11.Descript AS [S_QRATE_Description],
      x.[BASERATE],
      x.[CNFIRM],
      x.[BASEMKTDISC],
      x.[MKTDISC],
      x.[DISCPTS],
      x.[ORIGPTS],
      x.[RTCALCTYPE],
      x.[PPY],
      x.[CALFACT],
      x.[FIRSTBYDNPMT],
      x.[SECBYDNPMT],
      x.[THIRDBYDNPMT],
      x.[MKTDISCOVERRIDE],
      x.[INTRATEOVERRIDE],
      x.[S_RTCODEOVR],
      A12.Descript AS [S_RTCODEOVR_Description],
      x.[S_LTYPE],
      A13.Descript AS [S_LTYPE_Description],
      x.[S_PROGRM],
      A14.Descript AS [S_PROGRM_Description],
      x.[FINMIPERC],
      x.[QUALRATE],
      x.[BASEQUAL],
      x.[ODDDEFER],
      x.[LOCKCRIT],
      x.[LCKDTOVR],
      x.[QRADJOVR],
      x.[QROVRRID],
      x.[OLAEDT],
      x.[BASELAEDT],
      x.[ODDRATE],
      x.[S_AMTYPE],
      A15.Descript AS [S_AMTYPE_Description],
      x.[SELRTCODE],
      x.[S_RCOMNUM],
      A16.Descript AS [S_RCOMNUM_Description],
      x.[BYDNPMT4],
      x.[BYDNPMT5],
      x.[BYDNPMT6],
      x.[BYDNPMT7],
      x.[HRATIO],
      x.[DRATIO],
      x.[INITIAL_RATE],
      x.[DISCOVRD],
      x.[ORIGOVRD],
      x.[RNDLOANTO],
      x.[CASHOUT],
      x.[RATESELECT],
      x.[SEL_ROW_KEY],
      x.[SEL_ROW_INSTANCE],
      x.[BASEFLOOR],
      x.[HELAOVERRIDE],
      x.[HELA],
      x.[INTRESRV],
      x.[LOCKEDBY],
      x.[CUSTPMTCHECK],
      x.[INTRESREQ],
      x.[LOCKEXPDT],
      x.[SELECTEDINVESTOR],
      x.[S_BALLOON_TYPE],
      A17.Descript AS [S_BALLOON_TYPE_Description],
      x.[AMORT_OTHER],
      x.[CLIENTRATEINFO],
      x.[SELECTEDPROGRAM],
      x.[BUYDOWNOVERRIDES],
      x.[S_MORTGAGETYPE],
      A18.Descript AS [S_MORTGAGETYPE_Description],
      x.[TOTALPMTNO],
      x.[MININTPMTRATE],
      x.[REFI_RESCISSION_EXEMPT],
      x.[BASE_MARKET],
      x.[BASE_ORIGINATION],
      x.[FHA_PLUS],
      x.[FLEX_ALT_PRODUCT],
      x.[GPHREDUC],
      x.[BYDNTYPE],
      x.[BASE_SUB_RATE],
      x.[BASE_ADJ_RATE],
      x.[BASE_SUB_ORIG],
      x.[BASE_ADJ_ORIG],
      x.[BASE_SUB_DISC],
      x.[BASE_ADJ_DISC],
      x.[PMTRCODE],
      x.[S_AMORT_SUB_TYPE],
      A19.Descript AS [S_AMORT_SUB_TYPE_Description],
      x.[QUALMETHOD],
      x.[S_QUALMETHODOVR],
      A20.Descript AS [S_QUALMETHODOVR_Description],
      x.[YSP],
      x.[YSP_OVRD],
      x.[OVERAGE],
      x.[OVERAGE_OVRD],
      x.[LOCK_DAYS_CALC],
      x.[LA_INPUT_DENIAL],
      x.[LOAN_AFFORDABLE_PRODUCT],
      x.[MGTTYPE_OTHER],
      x.[HIGHNETWORTH],
      x.[DU_INT_RATE],
      x.[DU_PROD_CODE],
      x.[BASE_SUBS_MKT],
      x.[BASE_ADJ_MKT],
      x.[MKT_SUBS_ADJ],
      x.[CHECK_ELIGIBILITY],
      x.[DTI_OVRD],
      x.[OVRD_REASON],
      x.[EXCEPTIONAPPROVAL],
      x.[BASE_PROFIT_MARGIN],
      x.[PROFIT_MARGIN_ADJ],
      x.[PROFIT_MARGIN],
      x.[PROFITMARGINOVRD],
      x.[DUPRODUCTDESC],
      x.[BORR_RESCISSION_EXEMPT],
      x.[CORR_BOR_RATE_LOCKDATE],
      x.[S_203KTYPE],
      A21.Descript AS [S_203KTYPE_Description],
      x.[PRODUCT_DENIAL],
      x.[REQ_RESCISSION],
      x.[S_PRICING_REGION],
      A22.Descript AS [S_PRICING_REGION_Description],
      x.[S_PRICING_CHANNEL],
      A23.Descript AS [S_PRICING_CHANNEL_Description],
      x.[ROE],
      x.[ROA],
      x.[ROEEXP],
      x.[ROAEXP],
      x.[RATEEXCEPTION],
      x.[ALLINRATE],
      x.[RATEEXPAPR],
      x.[DECISIONBY],
      x.[DECISIONDATE],
      x.[ROEAPP],
      x.[ROAAPP],
      x.[RATEEXCEPTIONAPP],
      x.[ALLINRATEAPP],
      x.[RATEEXPAPPRVALID],
      x.[CALCULATEDNOTERATE],
      x.[NOTERTDIFFERENCE],
      x.[INTRATE_AT_APPROVAL],
      x.[OTHER_MORT_TYPE_DESC],
      x.[GSEPROD],
      x.[FLOAT_DOWN_DT],
      x.[DT_FIRST_FLOAT_ELIG],
      x.[DT_FINAL_FLOAT_ELIG],
      x.[REFUND_AMT],
      x.[UPFRONT_AMT],
      x.[FLOAT_DOWN_YN],
      x.[BUILDLOCKCANCEL],
      x.[BUILDER_LOCK],
      x.[OPL_OPT],
      x.[REFUND_PERCENT],
      x.[UPFRONT_PERCENT],
      x.[RATE_ADD_PERCENT],
      x.[BUILDER_UNLOCK],
      x.[DT_FIRST_FLOAT_ELIG_OVR],
      x.[DT_FINAL_FLOAT_ELIG_OVR],
      x.[DISC_VARIANCE_PCT],
      x.[BALLOON_YN],
      x.[AUS_INDICATOR],
      x.[LOAN_TYPE_CHG_FLAG],
      x.[S_PROD_PRICE_ENGINE],
      A24.Descript AS [S_PROD_PRICE_ENGINE_Description],
      x.[S_PROD_PRICE_ENGINE_OVR],
      A25.Descript AS [S_PROD_PRICE_ENGINE_OVR_Description],
      x.[S_PPY_FILTER],
      A26.Descript AS [S_PPY_FILTER_Description],
      x.[BUILDER_LOCK_ADJ],
      x.[REQLOANTERM],
      x.[DLR_PIPMT]
   FROM [clt_NetO].[PRODUCT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_PROD = A0.DBSYMBOL AND A0.[TableName] = 'PRODUCT' and A0.[COLUMNNAME] = 'S_PROD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_RATE = A1.DBSYMBOL AND A1.[TableName] = 'PRODUCT' and A1.[COLUMNNAME] = 'S_RATE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_RTCODE = A2.DBSYMBOL AND A2.[TableName] = 'PRODUCT' and A2.[COLUMNNAME] = 'S_RTCODE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_LCKTYP = A3.DBSYMBOL AND A3.[TableName] = 'PRODUCT' and A3.[COLUMNNAME] = 'S_LCKTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_LCKEXP = A4.DBSYMBOL AND A4.[TableName] = 'PRODUCT' and A4.[COLUMNNAME] = 'S_LCKEXP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_RATIO = A5.DBSYMBOL AND A5.[TableName] = 'PRODUCT' and A5.[COLUMNNAME] = 'S_RATIO'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_BYDOWN = A6.DBSYMBOL AND A6.[TableName] = 'PRODUCT' and A6.[COLUMNNAME] = 'S_BYDOWN'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_MIPLAN = A7.DBSYMBOL AND A7.[TableName] = 'PRODUCT' and A7.[COLUMNNAME] = 'S_MIPLAN'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.S_PMTSTR = A8.DBSYMBOL AND A8.[TableName] = 'PRODUCT' and A8.[COLUMNNAME] = 'S_PMTSTR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.S_DISC = A9.DBSYMBOL AND A9.[TableName] = 'PRODUCT' and A9.[COLUMNNAME] = 'S_DISC'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.S_ORIG = A10.DBSYMBOL AND A10.[TableName] = 'PRODUCT' and A10.[COLUMNNAME] = 'S_ORIG'
      LEFT JOIN [clt_NetO].[SymbolLookup] A11 on x.S_QRATE = A11.DBSYMBOL AND A11.[TableName] = 'PRODUCT' and A11.[COLUMNNAME] = 'S_QRATE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A12 on x.S_RTCODEOVR = A12.DBSYMBOL AND A12.[TableName] = 'PRODUCT' and A12.[COLUMNNAME] = 'S_RTCODEOVR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A13 on x.S_LTYPE = A13.DBSYMBOL AND A13.[TableName] = 'PRODUCT' and A13.[COLUMNNAME] = 'S_LTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A14 on x.S_PROGRM = A14.DBSYMBOL AND A14.[TableName] = 'PRODUCT' and A14.[COLUMNNAME] = 'S_PROGRM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A15 on x.S_AMTYPE = A15.DBSYMBOL AND A15.[TableName] = 'PRODUCT' and A15.[COLUMNNAME] = 'S_AMTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A16 on x.S_RCOMNUM = A16.DBSYMBOL AND A16.[TableName] = 'PRODUCT' and A16.[COLUMNNAME] = 'S_RCOMNUM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A17 on x.S_BALLOON_TYPE = A17.DBSYMBOL AND A17.[TableName] = 'PRODUCT' and A17.[COLUMNNAME] = 'S_BALLOON_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A18 on x.S_MORTGAGETYPE = A18.DBSYMBOL AND A18.[TableName] = 'PRODUCT' and A18.[COLUMNNAME] = 'S_MORTGAGETYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A19 on x.S_AMORT_SUB_TYPE = A19.DBSYMBOL AND A19.[TableName] = 'PRODUCT' and A19.[COLUMNNAME] = 'S_AMORT_SUB_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A20 on x.S_QUALMETHODOVR = A20.DBSYMBOL AND A20.[TableName] = 'PRODUCT' and A20.[COLUMNNAME] = 'S_QUALMETHODOVR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A21 on x.S_203KTYPE = A21.DBSYMBOL AND A21.[TableName] = 'PRODUCT' and A21.[COLUMNNAME] = 'S_203KTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A22 on x.S_PRICING_REGION = A22.DBSYMBOL AND A22.[TableName] = 'PRODUCT' and A22.[COLUMNNAME] = 'S_PRICING_REGION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A23 on x.S_PRICING_CHANNEL = A23.DBSYMBOL AND A23.[TableName] = 'PRODUCT' and A23.[COLUMNNAME] = 'S_PRICING_CHANNEL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A24 on x.S_PROD_PRICE_ENGINE = A24.DBSYMBOL AND A24.[TableName] = 'PRODUCT' and A24.[COLUMNNAME] = 'S_PROD_PRICE_ENGINE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A25 on x.S_PROD_PRICE_ENGINE_OVR = A25.DBSYMBOL AND A25.[TableName] = 'PRODUCT' and A25.[COLUMNNAME] = 'S_PROD_PRICE_ENGINE_OVR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A26 on x.S_PPY_FILTER = A26.DBSYMBOL AND A26.[TableName] = 'PRODUCT' and A26.[COLUMNNAME] = 'S_PPY_FILTER'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
