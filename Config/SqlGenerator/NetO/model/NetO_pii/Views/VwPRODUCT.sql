-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwPRODUCT]
AS
   SELECT
      x.[LNUM],
      x.[S_PROD],
      x.[S_RATE],
      x.[S_RTCODE],
      x.[OLA],
      x.[LTV],
      x.[S_LCKTYP],
      x.[LOCKDATE],
      x.[LOCKEXP],
      x.[LOCKDAYS],
      x.[INTRATE],
      x.[LOANTERM],
      x.[S_LCKEXP],
      x.[S_RATIO],
      x.[S_BYDOWN],
      x.[S_MIPLAN],
      x.[FMIRFLAG],
      x.[FMIRFCTR],
      x.[BALLFLAG],
      x.[AMTERM],
      x.[PIPMT],
      x.[S_PMTSTR],
      x.[S_DISC],
      x.[S_ORIG],
      x.[BASELA],
      x.[LOCKED],
      x.[S_QRATE],
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
      x.[S_LTYPE],
      x.[S_PROGRM],
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
      x.[SELRTCODE],
      x.[S_RCOMNUM],
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
      x.[AMORT_OTHER],
      x.[CLIENTRATEINFO],
      x.[SELECTEDPROGRAM],
      x.[BUYDOWNOVERRIDES],
      x.[S_MORTGAGETYPE],
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
      x.[QUALMETHOD],
      x.[S_QUALMETHODOVR],
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
      x.[PRODUCT_DENIAL],
      x.[REQ_RESCISSION],
      x.[S_PRICING_REGION],
      x.[S_PRICING_CHANNEL],
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
      x.[S_PROD_PRICE_ENGINE_OVR],
      x.[S_PPY_FILTER],
      x.[BUILDER_LOCK_ADJ],
      x.[REQLOANTERM]
   FROM [clt_NetO].[PRODUCT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
