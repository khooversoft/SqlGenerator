-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_RPT_IPG_DETAIL]
AS
   SELECT
      x.[LNUM],
      x.[INVESTOR_CODE],
      x.[PRODUCT_CODE],
      x.[PRODUCT_NAME],
      x.[PROGRAM_CODE],
      x.[PROGRAM_NAME],
      x.[PRICE_GROUP_CODE],
      x.[PRICE_GROUP_CODE_NAME],
      x.[IPG_NAME],
      x.[SECONDARY_LOAN_TYPE],
      x.[SECONDARY_LOAN_TYPE_DESC],
      x.[PREPAY_PENALTY_TYPE],
      x.[PREPAY_PENALTY_TYPE_DESC],
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
      x.[SERVICING_INTERFACE_IND],
      x.[SERVICING_LOCATION],
      x.[SUB_PRIME_IND],
      x.[MI_REQUIRE]
   FROM [clt_NetO].[WG_RPT_IPG_DETAIL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
