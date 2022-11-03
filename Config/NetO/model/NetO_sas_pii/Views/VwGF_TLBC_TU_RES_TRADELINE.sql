-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBC_TU_RES_TRADELINE]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWCOUNTER],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[CUSTOMER_NAME],
      x.[PORTFOLIO_TYPE],
      x.[HIGH_CREDIT],
      x.[ECOA_DESIGNATOR],
      x.[ACCOUNT_NUM],
      x.[REPORTED_DT],
      x.[OPENED_DT],
      x.[MONTHS_REVIEWED],
      x.[ACCT_TYPE_CODE],
      x.[CLOSED_DT],
      x.[SCHED_PAYMENT_AMT],
      x.[INDUSTRY_CODE],
      x.[MEMBER_CODE],
      x.[CURRENCY],
      x.[CURRENT_BALANCE_AMT],
      x.[TERMS_PMT_AMT],
      x.[CUR_ACCT_RATING],
      x.[PMT_PATTERN_START_DT],
      x.[PMT_PATTERN],
      x.[TIMES_30_DAYS_LATE],
      x.[TIMES_60_DAYS_LATE],
      x.[TIMES_90_DAYS_LATE],
      x.[HIGH_PAST_DUE_AMT],
      x.[HIGH_PAST_DUE_AMT_DT],
      x.[HIGH_PAST_DUE_AMT_RT],
      x.[MAX_DELINQUENCY_AMT],
      x.[MAX_DELINQUENCY_DT],
      x.[MAX_DELINQUENCY_ACCT_RT],
      x.[PMT_SCHED_DT],
      x.[PORTFOLIO_SALE_NAME],
      x.[AFFILIATE_REMARK_CODE],
      x.[GENERIC_REMARK_CODE],
      x.[RATING_HIST_REMARK_CODE],
      x.[COMPLIANCE_REMARK_CODE],
      x.[CONSUMER_STATEMENT_CODE],
      x.[UPDATE_METHOD_CODE],
      x.[LAST_PMT_DT],
      x.[TERMS_PMT_SCHED_MNTH_CNT],
      x.[PAST_DUE_AMT],
      x.[CREDIT_LIMIT_AMT],
      x.[TERMS_FREQUENCY],
      x.[CLOSED_DATE_IND],
      x.[PMT_SCHED_TYPE_CODE],
      x.[PORTFOLIO_SALE_CODE]
   FROM [clt_NetO].[GF_TLBC_TU_RES_TRADELINE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
