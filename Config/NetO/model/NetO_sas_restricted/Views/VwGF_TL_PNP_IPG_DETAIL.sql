-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TL_PNP_IPG_DETAIL]
AS
   SELECT
      x.[LNUM],
      x.[INVESTOR_CODE],
      x.[PRODUCT_CODE],
      x.[PROGRAM_CODE],
      x.[PRICE_GROUP_CODE],
      x.[IPG_NAME],
      x.[S_SEC_MANAGE_TYPE],
      x.[S_SEC_LOAN_TYPE],
      x.[S_SEC_POOL_TYPE],
      x.[S_PREPAY_PEN],
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
      x.[S_SERVICE_TYPE],
      x.[SERVICING_INTERFACE_IND],
      x.[SERVICING_LOCATION],
      x.[SUB_PRIME_IND],
      x.[MI_REQUIRE],
      x.[INTEREST_ONLY_PRODUCT],
      x.[S_SPEC_PROG],
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
      x.[S_ASSUMABILITY_FEATURE]
   FROM [clt_NetO].[GF_TL_PNP_IPG_DETAIL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
