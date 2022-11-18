-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TL_DATES]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [SEVEN_DAYS_EXP_DT]                datetime             NULL,
   [ANALYSIS_DT]                      datetime             NULL,
   [APPEAL_REQ_DT]                    datetime             NULL,
   [APPRAIS_ORDERED_DT]               datetime             NULL,
   [APP_DATE_OVR]                     datetime             NULL,
   [ASSET_EXP_DT]                     datetime             NULL,
   [BOOKED_DT]                        datetime             NULL,
   [CALL_BACK_DT]                     datetime             NULL,
   [CDU_DT]                           datetime             NULL,
   [COMP_SALE_DT]                     datetime             NULL,
   [CREDIT_DOC_DATE]                  datetime             NULL,
   [CREDIT_DOC_EXP_DT]                datetime             NULL,
   [CREDIT_RPT_EXP_DT]                datetime             NULL,
   [CUTOFF_DT]                        datetime             NULL,
   [DID_NOT_CLOSE_DT]                 datetime             NULL,
   [DNC_SUB_DT]                       datetime             NULL,
   [DOC_SIGN_DT]                      datetime             NULL,
   [EST_APPR_RECEIVED_DT]             datetime             NULL,
   [FEE_EXC_DT]                       datetime             NULL,
   [FEE_EXC_EXP_DT]                   datetime             NULL,
   [FILE_TO_PPS_DT]                   datetime             NULL,
   [GAP_LTR_DT]                       datetime             NULL,
   [HCM_DISCL_DT]                     datetime             NULL,
   [INCOME_DT]                        datetime             NULL,
   [INCOME_EXP_DT]                    datetime             NULL,
   [INIT_APPRV_DT]                    datetime             NULL,
   [INIT_DEC_DT]                      datetime             NULL,
   [LETTER_DT]                        datetime             NULL,
   [LOCK_CALL_DT]                     datetime             NULL,
   [MR_BNK_STMT_DT]                   datetime             NULL,
   [MR_CONSUM_DT]                     datetime             NULL,
   [MR_DISCH_DT]                      datetime             NULL,
   [MR_FILING_DT]                     datetime             NULL,
   [NOTE_DT]                          datetime             NULL,
   [OLD_BNK_STMT_DT]                  datetime             NULL,
   [PRICE_EXC_DT]                     datetime             NULL,
   [PRICE_EXC_EXP_DT]                 datetime             NULL,
   [RECERT_EXP_DT]                    datetime             NULL,
   [REGISTER_DT]                      datetime             NULL,
   [REINSTATED_DT]                    datetime             NULL,
   [REMOVAL_DT]                       datetime             NULL,
   [RESCIND_EXP_DT]                   datetime             NULL,
   [RESCISSN_RECVD]                   datetime             NULL,
   [RPTD_SALE_DT]                     datetime             NULL,
   [THIRTY_DAY_GUAR_EXP_DT]           datetime             NULL,
   [TITLE_COMM_DT]                    datetime             NULL,
   [TITLE_EFF_DT]                     datetime             NULL,
   [TITLE_EXP_DT]                     datetime             NULL,
   [TREAS_FUNDS_REC_DT]               datetime             NULL,
   [VALUATION_DT]                     datetime             NULL,
   [TX_CRED_NOTICE_DT]                datetime             NULL,
   [FIRST_PYMT_DUE_INV]               datetime             NULL,
   [INIT_DISCLOSURE_DT]               datetime             NULL,
   [FINAL_DISCLOSURE_DT]              datetime             NULL,
   [RECISSION_EXP_DT]                 datetime             NULL,
   [REDISCLOSE_DT]                    datetime             NULL,
   [CLOSE_PKG_EXPIRE_DT]              datetime             NULL,
   [UFMIP_VAFF_WIRE_DT]               datetime             NULL,
   [DOCS_DRAWN_DATE]                  datetime             NULL,
   [FILE_SUB_DATE]                    datetime             NULL,
   [NOIA_DATE]                        datetime             NULL,
   [ORIGINATION_DATE]                 datetime             NULL,
   [PROCESSING_BEGIN_DATE]            datetime             NULL,
   [READY_FOR_DOCS_DATE]              datetime             NULL,
   [REQ_ADDTL_PROC_DATE]              datetime             NULL,
   [READY_SHIP_DATE]                  datetime             NULL,
   [RESCISSION_EXP_DATE]              datetime             NULL,
   [SHIPPED_DATE]                     datetime             NULL,
   [INV_FUNDED_DATE]                  datetime             NULL,
   [READY_FUND_DATE]                  datetime             NULL,
   [READY_UW_DATE]                    datetime             NULL,
   [BORROWER_ACCEPTS_GFE]             datetime             NULL,
   [GFE_RT_GOOD_THRU_DT_OVR]          datetime             NULL,
   [GFE_EST_GOOD_THRU]                datetime             NULL,
   [FIRST_CREDIT_RPT_DT]              datetime             NULL,
   [LAST_CREDIT_RPT_DT]               datetime             NULL,
   [SUBMITDT]                         datetime             NULL,
   [FINAL_DOCS_SHIPPED]               datetime             NULL,
   [REDISCLOSE_REQUIRED_DATE]         datetime             NULL,
   [GFE_EST_GOOD_THRU_DT_OVR]         datetime             NULL,
   [BROKER_DISC_DATE]                 datetime             NULL,
   [CLOSINGDOCDUEDATE]                datetime             NULL,
   [GFE_REDISCLOSE_DT]                datetime             NULL,
   [TIL_REDISCLOSE_DT]                datetime             NULL,
   [TIL_REDISCLOSE_REQUIRED_DT]       datetime             NULL,
   [RECISSION_EXP_DT_OVR]             datetime             NULL,
   [COUNSEL_LIST_DT]                  datetime             NULL,
   [APP_REC_BY_ORIG_DT]               datetime             NULL,
   [APP_DISCLOSURE_DT]                datetime             NULL,
   [INIT_CLOSING_DISCL_DT]            datetime             NULL,
   [FINAL_DISCLOSURE_EX]              datetime             NULL,
   [FNM_UPLOAD_DATE]                  datetime             NULL,
   [BORRCOVRDEXPDT]                   datetime             NULL,
   [BORRCOVRDVALDT]                   datetime             NULL,
   [VERBALDISCDATE]                   datetime             NULL,
   [INIT_CD_READY_DT]                 datetime             NULL,
   [POST_CON_CD_DT]                   datetime             NULL,
   [LOAN_EST_APPRVD]                  datetime             NULL,
   [LOANREGDATE]                      datetime             NULL,
   [CORRSLKDT]                        datetime             NULL,
   [LENDER_DISC_DT]                   datetime             NULL,
   [CONFIG_DATE]                      datetime             NULL,
   [POST_CLOSE_CD_DT]                 datetime             NULL,
   [REV_RE_DT]                        datetime             NULL,
   [REV_LE_DT]                        datetime             NULL,
   [REDISCLOSE_DUE_DATE]              datetime             NULL,
   [INITDISCLOSE_DUE_DATE]            datetime             NULL,
   [INIT_DISCLOSURE_SENT_DATE]        datetime             NULL,
   [NOTE_SHIP_WAREHSE_DT]             datetime             NULL,
   [LOAN_IMG_OFFSITE_UPLOAD_DT]       datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([LNUM]), CLUSTERED COLUMNSTORE INDEX)
;