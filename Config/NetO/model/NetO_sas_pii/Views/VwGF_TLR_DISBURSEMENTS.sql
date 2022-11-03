-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLR_DISBURSEMENTS]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[MODIFIED_USERID],
      x.[S_FMETHOD],
      x.[S_FSTATUS],
      x.[S_DMETHOD],
      x.[AMOUNT],
      x.[PAYEE_NAME],
      x.[PAYEE_ADDRESS],
      x.[PAYEE_CITY],
      x.[PAYEE_STATE],
      x.[PAYEE_ZIP],
      x.[ISSUEDATE],
      x.[REQDATE],
      x.[S_TYPE],
      x.[S_FUNDLOC],
      x.[ROUTENUM],
      x.[ACCOUNTNUM],
      x.[TRANSNUM],
      x.[TRANSREF],
      x.[BENNAME],
      x.[BENACCTNUM],
      x.[BENNOTES],
      x.[BENFILEREFNUM],
      x.[BENBANKNAME],
      x.[BENABANUM],
      x.[BENLOCATION],
      x.[BENBANKNOTES],
      x.[BFDUSED],
      x.[BFDOVERRIDE],
      x.[BFDBANKNAME],
      x.[BFDABANUM],
      x.[BFDLOCATION],
      x.[BFDBANKNOTES],
      x.[IBDUSED],
      x.[IBDOVERRIDE],
      x.[IBDBANKNAME],
      x.[IBDABANUM],
      x.[IBDLOCATION],
      x.[IBDBANKNOTES],
      x.[DATE_PROCESSED],
      x.[CONFIRMED_YN],
      x.[DATE_CONFIRMED],
      x.[FROM_GL_ACCT],
      x.[TO_GL_ACCT],
      x.[BATCHID],
      x.[CANCEL_OR_VOID],
      x.[DATE_TERMINATED],
      x.[DISB_DESCRIPTION],
      x.[PROCESS_YN],
      x.[PAYEE_ADDRESS2],
      x.[PAYEE_TITLE],
      x.[WIRE_BANK_CID],
      x.[WIRECTR],
      x.[BEN_CREDIT_TO_ACCT],
      x.[BEN_CREDIT_TO_NAME],
      x.[PAYEE_COUNTRY],
      x.[WIRE_CONFIRMATION_NBR],
      x.[DISBDESC],
      x.[ACH_ACCOUNT_TYPE],
      x.[ACH_DEBIT_OR_CREDIT],
      x.[ACH_ROUTING_NUMBER],
      x.[ACH_ACCOUNT_NUMBER],
      x.[W_APPRVDBY1],
      x.[W_REQUESTEDDT],
      x.[W_REQUESTEDBY],
      x.[W_APPRVDBY2],
      x.[W_APPRVDDT1],
      x.[W_APPRVDDT2]
   FROM [clt_NetO].[GF_TLR_DISBURSEMENTS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
