-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_CRM_CUSTOMER_ACCT_DETAIL]
AS
   SELECT
      HASHBYTES('SHA2_256', x.[CURRENT_CUSTOMERID]) AS [CURRENT_CUSTOMERID],
      x.[ACC_TYPE],
      x.[ROWSERIALNO],
      x.[ACCTNUM],
      x.[MINORCODE],
      x.[ACCTBAL],
      x.[BANKRUPTCY],
      x.[ACCT_CHOFF],
      x.[ACCT_CHOFFPAID],
      x.[LIMITREMOVED],
      x.[LOANACCT_BUCODE],
      x.[LOANACCT_LIMIT],
      x.[HIGH_CREDIT],
      x.[INTEREST_RATE],
      x.[DEBTPAYOFFTHRUDT],
      x.[ORIGDBTDT],
      x.[LOANACCT_LIMIT_SUSP],
      x.[LOANACCT_DELINQUENCY],
      x.[LOANACCT_DAYSDELINQUENT],
      x.[LOANACCT_LOC],
      x.[SECURED],
      x.[MTHPYMT],
      x.[LOANACCT_LIMIT_MAINTENANCEDT],
      x.[LOANACCT_PREV_BAL],
      x.[LOANACCT_PREV_BAL_6MNTHS],
      x.[LINEOF_CREDITEXISTS],
      x.[LOANACCT_PRIMARY_HOLDER],
      x.[LOANACCT_TYPE],
      x.[LOANACCT_OBLIGATION],
      x.[DEPACCT_PRIMARY_HOLDER],
      x.[ACCOUNT_QUALIFICATIONS],
      x.[ISONLINE_BANKINGUSER]
   FROM [clt_NetO].[WG_CRM_CUSTOMER_ACCT_DETAIL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
