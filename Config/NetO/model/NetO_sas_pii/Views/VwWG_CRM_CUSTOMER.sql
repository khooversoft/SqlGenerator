-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_CRM_CUSTOMER]
AS
   SELECT
      x.[CUSTOMER_ID] AS [CUSTOMER_ID],
      x.[CUSTOMER_TYPE] AS [CUSTOMER_TYPE],
      x.[CUSTOMER_NAME] AS [CUSTOMER_NAME],
      x.[FNAME] AS [FNAME],
      x.[MNAME] AS [MNAME],
      x.[LNAME] AS [LNAME],
      x.[NAME_SUFFIX] AS [NAME_SUFFIX],
      x.[SSNTIN] AS [SSNTIN],
      x.[DOB] AS [DOB],
      x.[MOTHER_MAIDENNAME] AS [MOTHER_MAIDENNAME],
      x.[IS_CURRENT] AS [IS_CURRENT],
      x.[IS_EMPLOYEE] AS [IS_EMPLOYEE],
      x.[CUSTOMER_AS_YEARS] AS [CUSTOMER_AS_YEARS],
      x.[CUSTOMER_AS_MONTHS] AS [CUSTOMER_AS_MONTHS],
      x.[EMAIL_ADDR] AS [EMAIL_ADDR],
      x.[HASCHECKINGACCT] AS [HASCHECKINGACCT],
      x.[CHECKING_ACT_BAL] AS [CHECKING_ACT_BAL],
      x.[BU_ACT_BAL] AS [BU_ACT_BAL],
      x.[SHARE_ACCT_BAL] AS [SHARE_ACCT_BAL],
      x.[QUALIFILESCORE] AS [QUALIFILESCORE],
      x.[QUALIFILESCORE_DATE] AS [QUALIFILESCORE_DATE],
      x.[NO_FUN_AUTO_30DAYS] AS [NO_FUN_AUTO_30DAYS],
      x.[NO_ASLQACCT] AS [NO_ASLQACCT],
      x.[NO_NSFS_LAST6MONTHS] AS [NO_NSFS_LAST6MONTHS],
      x.[TOT_NO_NSFS_LAST6MONTHS] AS [TOT_NO_NSFS_LAST6MONTHS],
      x.[NO_NSFS_LAST24MONTHS] AS [NO_NSFS_LAST24MONTHS],
      x.[ALLLOAN_CHOFFPAID] AS [ALLLOAN_CHOFFPAID],
      x.[AGG_BUS_LOANS] AS [AGG_BUS_LOANS],
      x.[AGG_SEC_LOANS] AS [AGG_SEC_LOANS],
      x.[AGG_PER_LOANS] AS [AGG_PER_LOANS],
      x.[HAS_CHKNG_ACCT] AS [HAS_CHKNG_ACCT],
      x.[NON_MORT_CREDITCHOFF] AS [NON_MORT_CREDITCHOFF],
      x.[DEPOSITACCT_CHOFF] AS [DEPOSITACCT_CHOFF],
      x.[ALLDEPOSIT_ACCT_CHOFFPAID] AS [ALLDEPOSIT_ACCT_CHOFFPAID],
      x.[LOAN_CHOFF] AS [LOAN_CHOFF],
      x.[BANKRUPTCY_FLAG] AS [BANKRUPTCY_FLAG],
      x.[CREDITCARD_CHOFF] AS [CREDITCARD_CHOFF],
      x.[CREDITCARD_CHOFFPAID] AS [CREDITCARD_CHOFFPAID],
      x.[PERSON_REC_FOUND] AS [PERSON_REC_FOUND],
      x.[LDFM_FLAG] AS [LDFM_FLAG],
      x.[LDFM_INACT_DATE] AS [LDFM_INACT_DATE],
      x.[PLATFORM_SOURCE] AS [PLATFORM_SOURCE]
   FROM [clt_NetO].[WG_CRM_CUSTOMER] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
