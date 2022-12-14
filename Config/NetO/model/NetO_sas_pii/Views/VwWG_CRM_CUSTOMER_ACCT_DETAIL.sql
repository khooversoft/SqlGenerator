-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_CRM_CUSTOMER_ACCT_DETAIL]
AS
   SELECT
      x.[CURRENT_CUSTOMERID] AS [CURRENT_CUSTOMERID],
      x.[ACC_TYPE] AS [ACC_TYPE],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[ACCTNUM] AS [ACCTNUM],
      x.[MINORCODE] AS [MINORCODE],
      x.[ACCTBAL] AS [ACCTBAL],
      x.[BANKRUPTCY] AS [BANKRUPTCY],
      x.[ACCT_CHOFF] AS [ACCT_CHOFF],
      x.[ACCT_CHOFFPAID] AS [ACCT_CHOFFPAID],
      x.[LIMITREMOVED] AS [LIMITREMOVED],
      x.[LOANACCT_BUCODE] AS [LOANACCT_BUCODE],
      x.[LOANACCT_LIMIT] AS [LOANACCT_LIMIT],
      x.[HIGH_CREDIT] AS [HIGH_CREDIT],
      x.[INTEREST_RATE] AS [INTEREST_RATE],
      x.[DEBTPAYOFFTHRUDT] AS [DEBTPAYOFFTHRUDT],
      x.[ORIGDBTDT] AS [ORIGDBTDT],
      x.[LOANACCT_LIMIT_SUSP] AS [LOANACCT_LIMIT_SUSP],
      x.[LOANACCT_DELINQUENCY] AS [LOANACCT_DELINQUENCY],
      x.[LOANACCT_DAYSDELINQUENT] AS [LOANACCT_DAYSDELINQUENT],
      x.[LOANACCT_LOC] AS [LOANACCT_LOC],
      x.[SECURED] AS [SECURED],
      x.[MTHPYMT] AS [MTHPYMT],
      x.[LOANACCT_LIMIT_MAINTENANCEDT] AS [LOANACCT_LIMIT_MAINTENANCEDT],
      x.[LOANACCT_PREV_BAL] AS [LOANACCT_PREV_BAL],
      x.[LOANACCT_PREV_BAL_6MNTHS] AS [LOANACCT_PREV_BAL_6MNTHS],
      x.[LINEOF_CREDITEXISTS] AS [LINEOF_CREDITEXISTS],
      x.[LOANACCT_PRIMARY_HOLDER] AS [LOANACCT_PRIMARY_HOLDER],
      x.[LOANACCT_TYPE] AS [LOANACCT_TYPE],
      x.[LOANACCT_OBLIGATION] AS [LOANACCT_OBLIGATION],
      x.[DEPACCT_PRIMARY_HOLDER] AS [DEPACCT_PRIMARY_HOLDER],
      x.[ACCOUNT_QUALIFICATIONS] AS [ACCOUNT_QUALIFICATIONS],
      x.[ISONLINE_BANKINGUSER] AS [ISONLINE_BANKINGUSER]
   FROM [clt_NetO].[WG_CRM_CUSTOMER_ACCT_DETAIL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
