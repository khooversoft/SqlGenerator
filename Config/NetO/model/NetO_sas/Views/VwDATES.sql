-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwDATES]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DOCDATE] AS [DOCDATE],
      x.[CANCLDAT] AS [CANCLDAT],
      x.[LNMODDAT] AS [LNMODDAT],
      x.[SALCONDT] AS [SALCONDT],
      x.[RETDOCDT] AS [RETDOCDT],
      x.[LNFUNDAT] AS [LNFUNDAT],
      x.[ASSIGNDT] AS [ASSIGNDT],
      x.[APPDATE] AS [APPDATE],
      x.[QUALFYDT] AS [QUALFYDT],
      x.[APPRVLDT] AS [APPRVLDT],
      x.[INSPCTDT] AS [INSPCTDT],
      x.[APPRLISS] AS [APPRLISS],
      x.[APPRLEXP] AS [APPRLEXP],
      x.[TTLRPTDT] AS [TTLRPTDT],
      x.[SURVEYDT] AS [SURVEYDT],
      x.[DENIALDT] AS [DENIALDT],
      x.[COMMBEG] AS [COMMBEG],
      x.[COMMEND] AS [COMMEND],
      x.[RECDATE] AS [RECDATE],
      x.[REMMITDT] AS [REMMITDT],
      x.[OCCPYDT] AS [OCCPYDT],
      x.[DISCDATE] AS [DISCDATE],
      x.[PURCHDT] AS [PURCHDT],
      x.[DTCLOS_E] AS [DTCLOS_E],
      x.[SUBDT] AS [SUBDT],
      x.[PREQUAL] AS [PREQUAL],
      x.[UNDER] AS [UNDER],
      x.[FULLPACK] AS [FULLPACK],
      x.[SENTUNDER] AS [SENTUNDER],
      x.[AUDIT_DATE] AS [AUDIT_DATE],
      x.[SUBAUDIT] AS [SUBAUDIT],
      x.[FILEUNDER] AS [FILEUNDER],
      x.[FILEREC] AS [FILEREC],
      x.[MISC1DATE] AS [MISC1DATE],
      x.[MISC2DATE] AS [MISC2DATE],
      x.[MISC3DATE] AS [MISC3DATE],
      x.[MISC4DATE] AS [MISC4DATE],
      x.[MISC5DATE] AS [MISC5DATE],
      x.[MISC6DATE] AS [MISC6DATE],
      x.[MISC7DATE] AS [MISC7DATE],
      x.[MISC8DATE] AS [MISC8DATE],
      x.[MISC9DATE] AS [MISC9DATE],
      x.[MISC10DTE] AS [MISC10DTE],
      x.[ESTFUND] AS [ESTFUND],
      x.[THREEDAY] AS [THREEDAY],
      x.[RECEIVE] AS [RECEIVE],
      x.[SEC32_SIGN_DATE] AS [SEC32_SIGN_DATE],
      x.[APPREFFDT] AS [APPREFFDT],
      x.[BRKRSUBMISSIONDATE] AS [BRKRSUBMISSIONDATE],
      x.[NOI_GEN_DATE] AS [NOI_GEN_DATE],
      x.[NOISENTDATE] AS [NOISENTDATE],
      x.[NOISTARTDATE] AS [NOISTARTDATE],
      x.[NOISTARTDT_OVR] AS [NOISTARTDT_OVR],
      x.[NOIENDDATE] AS [NOIENDDATE],
      x.[LAST_LOAN_CLOSE_DT] AS [LAST_LOAN_CLOSE_DT],
      x.[COMMBEGDTOVR] AS [COMMBEGDTOVR],
      x.[COMMENDDTOVR] AS [COMMENDDTOVR],
      x.[CREDITDECISIONSTARTDATE] AS [CREDITDECISIONSTARTDATE],
      x.[CREDITDECISIONCLOCKEND] AS [CREDITDECISIONCLOCKEND],
      x.[CRDTDECSTRTDTOVERR] AS [CRDTDECSTRTDTOVERR],
      x.[NOI_LETTER_EXPIRE_DATE] AS [NOI_LETTER_EXPIRE_DATE],
      x.[TITLE_POLICYDATE] AS [TITLE_POLICYDATE],
      x.[HUD_REVIEWDATE] AS [HUD_REVIEWDATE],
      x.[FILE_RECVD_PC] AS [FILE_RECVD_PC],
      x.[LAST_DOC_REC_DATE] AS [LAST_DOC_REC_DATE],
      x.[USDA_OBLIGATION_DT] AS [USDA_OBLIGATION_DT],
      x.[NOTICE_OF_SALE] AS [NOTICE_OF_SALE],
      x.[LAST_CONTACT_DATE] AS [LAST_CONTACT_DATE],
      x.[HO_PLCY_RCVD] AS [HO_PLCY_RCVD],
      x.[SELLER_ACQUIRED] AS [SELLER_ACQUIRED],
      x.[FINALAPRDT] AS [FINALAPRDT],
      x.[CONDTNLETRDT] AS [CONDTNLETRDT],
      x.[MRC_RECORDED_DATE] AS [MRC_RECORDED_DATE],
      x.[MERS_MIN_TRNSFD_DATE] AS [MERS_MIN_TRNSFD_DATE],
      x.[SENT_INSURER_DATE] AS [SENT_INSURER_DATE],
      x.[PC_DOCS_RVWD_DATE] AS [PC_DOCS_RVWD_DATE],
      x.[INS_FEE_PAID_DATE] AS [INS_FEE_PAID_DATE],
      x.[INS_CNFMD_DATE] AS [INS_CNFMD_DATE],
      x.[PRICE_EFFECTIVE_DATE] AS [PRICE_EFFECTIVE_DATE],
      x.[SERVCND_PAIDOFF_DT] AS [SERVCND_PAIDOFF_DT],
      x.[SERVCNG_RELEASED_DT] AS [SERVCNG_RELEASED_DT],
      x.[REPURCH_DT] AS [REPURCH_DT],
      x.[GOODBYE_LTR_DT] AS [GOODBYE_LTR_DT],
      x.[INDEMNF_DT] AS [INDEMNF_DT],
      x.[DT_FLOOD_NTB_MAILED] AS [DT_FLOOD_NTB_MAILED],
      x.[APPRLEXP_OVR_DT] AS [APPRLEXP_OVR_DT],
      x.[CONTRACT_SETTLEMENT_DT] AS [CONTRACT_SETTLEMENT_DT],
      x.[DOCSRETBYDT] AS [DOCSRETBYDT]
   FROM [clt_NetO].[DATES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
