-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLR_RES_CREDIT_SUMMARY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[PRCNT_REV_CRED_AVAIL] AS [PRCNT_REV_CRED_AVAIL],
      x.[TOTAL_INQ_COUNT] AS [TOTAL_INQ_COUNT],
      x.[REALEST_LT30DAYS_CURDELINQ] AS [REALEST_LT30DAYS_CURDELINQ],
      x.[TOTAL_LT60DAYS_CURDELINQ] AS [TOTAL_LT60DAYS_CURDELINQ],
      x.[REALEST_LATE60DAYS_CURDELINQ] AS [REALEST_LATE60DAYS_CURDELINQ],
      x.[REV_LATE60DAYS_CURDELINQ] AS [REV_LATE60DAYS_CURDELINQ],
      x.[TOTAL_LT90PLUSDAYS_CURDELINQ] AS [TOTAL_LT90PLUSDAYS_CURDELINQ],
      x.[REALEST_LT90PLUSDAYS_CURDELINQ] AS [REALEST_LT90PLUSDAYS_CURDELINQ],
      x.[NEW_TRDS_IN6MONTHS] AS [NEW_TRDS_IN6MONTHS],
      x.[TOTAL_TRDLINES_COUNT] AS [TOTAL_TRDLINES_COUNT],
      x.[TOTAL_CLOSED_TRDLINES_COUNT] AS [TOTAL_CLOSED_TRDLINES_COUNT],
      x.[INST_TRDLINES_COUNT] AS [INST_TRDLINES_COUNT],
      x.[INST_CLOSED_TRDLINES_COUNT] AS [INST_CLOSED_TRDLINES_COUNT],
      x.[REALEST_TTRDLINES_COUNT] AS [REALEST_TTRDLINES_COUNT],
      x.[REALEST_CLOSED_TRDLINES_COUNT] AS [REALEST_CLOSED_TRDLINES_COUNT],
      x.[REV_TRDLINES_COUNT] AS [REV_TRDLINES_COUNT],
      x.[REV_CLOSED_TRDLINES_COUNT] AS [REV_CLOSED_TRDLINES_COUNT],
      x.[REV_CURRENT_TRDLINES_COUNT] AS [REV_CURRENT_TRDLINES_COUNT],
      x.[OTHER_CURRENT_TRDLINES_COUNT] AS [OTHER_CURRENT_TRDLINES_COUNT],
      x.[INST_CURRENT_TRDLINES_COUNT] AS [INST_CURRENT_TRDLINES_COUNT],
      x.[TOTAL_COLLECTIONS] AS [TOTAL_COLLECTIONS],
      x.[OLDEST_TRADE_DATE] AS [OLDEST_TRADE_DATE],
      x.[REALEST_CURRENT_TRDLINES_COUNT] AS [REALEST_CURRENT_TRDLINES_COUNT],
      x.[TOTAL_CURRENT_TRDLINES_COUNT] AS [TOTAL_CURRENT_TRDLINES_COUNT],
      x.[REV_TRL_MTH_PMT_AMOUNT] AS [REV_TRL_MTH_PMT_AMOUNT],
      x.[INST_TRL_MTH_PMT_AMOUNT] AS [INST_TRL_MTH_PMT_AMOUNT],
      x.[IDENTITY_ON_FILEDATE] AS [IDENTITY_ON_FILEDATE],
      x.[TERM] AS [TERM],
      x.[INQ_AGE_DAYS] AS [INQ_AGE_DAYS],
      x.[ELIM_SAME_DAY_INQ_COUNT] AS [ELIM_SAME_DAY_INQ_COUNT],
      x.[INQ_ADJ_TOTAL] AS [INQ_ADJ_TOTAL],
      x.[PAID_AS_AGREED] AS [PAID_AS_AGREED],
      x.[NOW_DELINQUENT] AS [NOW_DELINQUENT],
      x.[ALL_DELINQUENT] AS [ALL_DELINQUENT],
      x.[HIGHEST_HIGH_CREDIT] AS [HIGHEST_HIGH_CREDIT],
      x.[LOWEST_HIGH_CREDIT] AS [LOWEST_HIGH_CREDIT],
      x.[HIST_DELINQ_COUNT] AS [HIST_DELINQ_COUNT],
      x.[REV_OTHER_ACCOUNTSCOUNT] AS [REV_OTHER_ACCOUNTSCOUNT],
      x.[BAL_REVOLVING_OTHER] AS [BAL_REVOLVING_OTHER],
      x.[PMTS_REVOLVING_OTHER] AS [PMTS_REVOLVING_OTHER],
      x.[REV_OTH_CREDIT_AVAILABLE] AS [REV_OTH_CREDIT_AVAILABLE],
      x.[REV_OTH_CREDIT_PERCENT] AS [REV_OTH_CREDIT_PERCENT],
      x.[TOTAL_TRL_BAL_AMT] AS [TOTAL_TRL_BAL_AMT],
      x.[TOTAL_TRL_MNTHLY_PMT_AMT] AS [TOTAL_TRL_MNTHLY_PMT_AMT],
      x.[TOTAL_CUR_TRDLINES_COUNT] AS [TOTAL_CUR_TRDLINES_COUNT],
      x.[TOTAL_UNRATED_TRDLINES_COUNT] AS [TOTAL_UNRATED_TRDLINES_COUNT],
      x.[TOTAL_LT30DAYS_CURDELINQ] AS [TOTAL_LT30DAYS_CURDELINQ],
      x.[TOTAL_LT30DAYS_HISTDELINQ] AS [TOTAL_LT30DAYS_HISTDELINQ],
      x.[TOTAL_LT60DAYS_HISTDELINQ] AS [TOTAL_LT60DAYS_HISTDELINQ],
      x.[TOTAL_LT90PLUSDAYS_HISTDELINQ] AS [TOTAL_LT90PLUSDAYS_HISTDELINQ],
      x.[REALEST_TRLBAL_AMOUNT] AS [REALEST_TRLBAL_AMOUNT],
      x.[REALEST_TRLMONTHLY_PMT_AMOUNT] AS [REALEST_TRLMONTHLY_PMT_AMOUNT],
      x.[REALEST_UNRATED_TRDLINES_COUNT] AS [REALEST_UNRATED_TRDLINES_COUNT],
      x.[REALEST_LT30DAYS_HISTDELINQ] AS [REALEST_LT30DAYS_HISTDELINQ],
      x.[REALEST_LT60DAYS_HISTDELINQ] AS [REALEST_LT60DAYS_HISTDELINQ],
      x.[REALEST_LT90PLSDAYS_HISTDELINQ] AS [REALEST_LT90PLSDAYS_HISTDELINQ],
      x.[INST_TRL_BAL_AMOUNT] AS [INST_TRL_BAL_AMOUNT],
      x.[INST_UNRATED_TRDLINES_COUNT] AS [INST_UNRATED_TRDLINES_COUNT],
      x.[INST_LT30DAYS_CURDELINQ] AS [INST_LT30DAYS_CURDELINQ],
      x.[INST_LT60DAYS_CURDELINQ] AS [INST_LT60DAYS_CURDELINQ],
      x.[INST_LT90PLUSDAYS_CURDELINQ] AS [INST_LT90PLUSDAYS_CURDELINQ],
      x.[INST_LT30DAYS_HISTDELINQ] AS [INST_LT30DAYS_HISTDELINQ],
      x.[INST_LT60DAYS_HISTDELINQ] AS [INST_LT60DAYS_HISTDELINQ],
      x.[INST_LT90PLUSDAYS_HISTDELINQ] AS [INST_LT90PLUSDAYS_HISTDELINQ],
      x.[REV_CREDITAVAILABLE] AS [REV_CREDITAVAILABLE],
      x.[REV_CREDITTOTAL] AS [REV_CREDITTOTAL],
      x.[REV_TRL_BAL_AMOUNT] AS [REV_TRL_BAL_AMOUNT],
      x.[REV_UNRATED_TRDLINES_COUNT] AS [REV_UNRATED_TRDLINES_COUNT],
      x.[REV_LT30DAYS_CURDELINQ] AS [REV_LT30DAYS_CURDELINQ],
      x.[REV_LT60DAYS_CURDELINQ] AS [REV_LT60DAYS_CURDELINQ],
      x.[REV_LT90PLUSDAYS_CURDELINQ] AS [REV_LT90PLUSDAYS_CURDELINQ],
      x.[REV_LT30DAYS_HISTDELINQ] AS [REV_LT30DAYS_HISTDELINQ],
      x.[REV_LT60DAYS_HISTDELINQ] AS [REV_LT60DAYS_HISTDELINQ],
      x.[REV_LT90PLUSDAYS_HISTDELINQ] AS [REV_LT90PLUSDAYS_HISTDELINQ],
      x.[OTHER_CREDITAVAILABLE] AS [OTHER_CREDITAVAILABLE],
      x.[OTHER_CREDITTOTAL] AS [OTHER_CREDITTOTAL],
      x.[OTHER_TRDLINES_COUNT] AS [OTHER_TRDLINES_COUNT],
      x.[OTHER_TRL_BAL_AMOUNT] AS [OTHER_TRL_BAL_AMOUNT],
      x.[OTHER_TRL_MTH_PMT_AMOUNT] AS [OTHER_TRL_MTH_PMT_AMOUNT],
      x.[OTHER_CLOSED_TRDLINES_COUNT] AS [OTHER_CLOSED_TRDLINES_COUNT],
      x.[OTHER_UNRATED_TRDLINES_COUNT] AS [OTHER_UNRATED_TRDLINES_COUNT],
      x.[OTHER_LT30DAYS_CURDELINQ] AS [OTHER_LT30DAYS_CURDELINQ],
      x.[OTHER_LT60DAYS_CURDELINQ] AS [OTHER_LT60DAYS_CURDELINQ],
      x.[OTHER_LT90PLUSDAYS_CURDELINQ] AS [OTHER_LT90PLUSDAYS_CURDELINQ],
      x.[OTHER_LT30DAYS_HISTDELINQ] AS [OTHER_LT30DAYS_HISTDELINQ],
      x.[OTHER_LT60DAYS_HISTDELINQ] AS [OTHER_LT60DAYS_HISTDELINQ],
      x.[OTHER_LT90PLUSDAYS_HISTDELINQ] AS [OTHER_LT90PLUSDAYS_HISTDELINQ],
      x.[ANY_PUBREC_LAST_2YRS] AS [ANY_PUBREC_LAST_2YRS],
      x.[TOTAL_PRCOUNT] AS [TOTAL_PRCOUNT],
      x.[EFX_PUBREC_COUNT] AS [EFX_PUBREC_COUNT],
      x.[TUC_PUBREC_COUNT] AS [TUC_PUBREC_COUNT],
      x.[XPN_PUBREC_COUNT] AS [XPN_PUBREC_COUNT]
   FROM [clt_NetO].[GF_TLR_RES_CREDIT_SUMMARY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
