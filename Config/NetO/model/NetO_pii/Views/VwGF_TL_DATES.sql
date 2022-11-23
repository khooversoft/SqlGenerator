-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TL_DATES]
AS
   SELECT
      x.[LNUM],
      x.[SEVEN_DAYS_EXP_DT],
      x.[ANALYSIS_DT],
      x.[APPEAL_REQ_DT],
      x.[APPRAIS_ORDERED_DT],
      x.[APP_DATE_OVR],
      x.[ASSET_EXP_DT],
      x.[BOOKED_DT],
      x.[CALL_BACK_DT],
      x.[CDU_DT],
      x.[COMP_SALE_DT],
      x.[CREDIT_DOC_DATE],
      x.[CREDIT_DOC_EXP_DT],
      x.[CREDIT_RPT_EXP_DT],
      x.[CUTOFF_DT],
      x.[DID_NOT_CLOSE_DT],
      x.[DNC_SUB_DT],
      x.[DOC_SIGN_DT],
      x.[EST_APPR_RECEIVED_DT],
      x.[FEE_EXC_DT],
      x.[FEE_EXC_EXP_DT],
      x.[FILE_TO_PPS_DT],
      x.[GAP_LTR_DT],
      x.[HCM_DISCL_DT],
      x.[INCOME_DT],
      x.[INCOME_EXP_DT],
      x.[INIT_APPRV_DT],
      x.[INIT_DEC_DT],
      x.[LETTER_DT],
      x.[LOCK_CALL_DT],
      x.[MR_BNK_STMT_DT],
      x.[MR_CONSUM_DT],
      x.[MR_DISCH_DT],
      x.[MR_FILING_DT],
      x.[NOTE_DT],
      x.[OLD_BNK_STMT_DT],
      x.[PRICE_EXC_DT],
      x.[PRICE_EXC_EXP_DT],
      x.[RECERT_EXP_DT],
      x.[REGISTER_DT],
      x.[REINSTATED_DT],
      x.[REMOVAL_DT],
      x.[RESCIND_EXP_DT],
      x.[RESCISSN_RECVD],
      x.[RPTD_SALE_DT],
      x.[THIRTY_DAY_GUAR_EXP_DT],
      x.[TITLE_COMM_DT],
      x.[TITLE_EFF_DT],
      x.[TITLE_EXP_DT],
      x.[TREAS_FUNDS_REC_DT],
      x.[VALUATION_DT],
      x.[TX_CRED_NOTICE_DT],
      x.[FIRST_PYMT_DUE_INV],
      x.[INIT_DISCLOSURE_DT],
      x.[FINAL_DISCLOSURE_DT],
      x.[RECISSION_EXP_DT],
      x.[REDISCLOSE_DT],
      x.[CLOSE_PKG_EXPIRE_DT],
      x.[UFMIP_VAFF_WIRE_DT],
      x.[DOCS_DRAWN_DATE],
      x.[FILE_SUB_DATE],
      x.[NOIA_DATE],
      x.[ORIGINATION_DATE],
      x.[PROCESSING_BEGIN_DATE],
      x.[READY_FOR_DOCS_DATE],
      x.[REQ_ADDTL_PROC_DATE],
      x.[READY_SHIP_DATE],
      x.[RESCISSION_EXP_DATE],
      x.[SHIPPED_DATE],
      x.[INV_FUNDED_DATE],
      x.[READY_FUND_DATE],
      x.[READY_UW_DATE],
      x.[BORROWER_ACCEPTS_GFE],
      x.[GFE_RT_GOOD_THRU_DT_OVR],
      x.[GFE_EST_GOOD_THRU],
      x.[FIRST_CREDIT_RPT_DT],
      x.[LAST_CREDIT_RPT_DT],
      x.[SUBMITDT],
      x.[FINAL_DOCS_SHIPPED],
      x.[REDISCLOSE_REQUIRED_DATE],
      x.[GFE_EST_GOOD_THRU_DT_OVR],
      x.[BROKER_DISC_DATE],
      x.[CLOSINGDOCDUEDATE],
      x.[GFE_REDISCLOSE_DT],
      x.[TIL_REDISCLOSE_DT],
      x.[TIL_REDISCLOSE_REQUIRED_DT],
      x.[RECISSION_EXP_DT_OVR],
      x.[COUNSEL_LIST_DT],
      x.[APP_REC_BY_ORIG_DT],
      x.[APP_DISCLOSURE_DT],
      x.[INIT_CLOSING_DISCL_DT],
      x.[FINAL_DISCLOSURE_EX],
      x.[FNM_UPLOAD_DATE],
      x.[BORRCOVRDEXPDT],
      x.[BORRCOVRDVALDT],
      x.[VERBALDISCDATE],
      x.[INIT_CD_READY_DT],
      x.[POST_CON_CD_DT],
      x.[LOAN_EST_APPRVD],
      x.[LOANREGDATE],
      x.[CORRSLKDT],
      x.[LENDER_DISC_DT],
      x.[CONFIG_DATE],
      x.[POST_CLOSE_CD_DT],
      x.[REV_RE_DT],
      x.[REV_LE_DT],
      x.[REDISCLOSE_DUE_DATE],
      x.[INITDISCLOSE_DUE_DATE],
      x.[INIT_DISCLOSURE_SENT_DATE],
      x.[NOTE_SHIP_WAREHSE_DT],
      x.[LOAN_IMG_OFFSITE_UPLOAD_DT]
   FROM [clt_NetO].[GF_TL_DATES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
