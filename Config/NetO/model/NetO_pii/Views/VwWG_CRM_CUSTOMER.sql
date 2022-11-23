-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_CRM_CUSTOMER]
AS
   SELECT
      x.[CUSTOMER_ID],
      x.[CUSTOMER_TYPE],
      x.[CUSTOMER_NAME],
      x.[FNAME],
      x.[MNAME],
      x.[LNAME],
      x.[NAME_SUFFIX],
      x.[SSNTIN],
      x.[DOB],
      x.[MOTHER_MAIDENNAME],
      x.[IS_CURRENT],
      x.[IS_EMPLOYEE],
      x.[CUSTOMER_AS_YEARS],
      x.[CUSTOMER_AS_MONTHS],
      x.[EMAIL_ADDR],
      x.[HASCHECKINGACCT],
      x.[CHECKING_ACT_BAL],
      x.[BU_ACT_BAL],
      x.[SHARE_ACCT_BAL],
      x.[QUALIFILESCORE],
      x.[QUALIFILESCORE_DATE],
      x.[NO_FUN_AUTO_30DAYS],
      x.[NO_ASLQACCT],
      x.[NO_NSFS_LAST6MONTHS],
      x.[TOT_NO_NSFS_LAST6MONTHS],
      x.[NO_NSFS_LAST24MONTHS],
      x.[ALLLOAN_CHOFFPAID],
      x.[AGG_BUS_LOANS],
      x.[AGG_SEC_LOANS],
      x.[AGG_PER_LOANS],
      x.[HAS_CHKNG_ACCT],
      x.[NON_MORT_CREDITCHOFF],
      x.[DEPOSITACCT_CHOFF],
      x.[ALLDEPOSIT_ACCT_CHOFFPAID],
      x.[LOAN_CHOFF],
      x.[BANKRUPTCY_FLAG],
      x.[CREDITCARD_CHOFF],
      x.[CREDITCARD_CHOFFPAID],
      x.[PERSON_REC_FOUND],
      x.[LDFM_FLAG],
      x.[LDFM_INACT_DATE],
      x.[PLATFORM_SOURCE]
   FROM [clt_NetO].[WG_CRM_CUSTOMER] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
