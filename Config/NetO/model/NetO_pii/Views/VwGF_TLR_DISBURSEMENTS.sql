-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLR_DISBURSEMENTS]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[MODIFIED_USERID],
      x.[S_FMETHOD],
      A0.[Descript] AS [S_FMETHOD_X],
      x.[S_FSTATUS],
      A1.[Descript] AS [S_FSTATUS_X],
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
      A2.[Descript] AS [S_TYPE_X],
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
      A3.[Descript] AS [ACH_ACCOUNT_TYPE_X],
      x.[ACH_DEBIT_OR_CREDIT],
      A4.[Descript] AS [ACH_DEBIT_OR_CREDIT_X],
      x.[ACH_ROUTING_NUMBER],
      x.[ACH_ACCOUNT_NUMBER],
      x.[W_APPRVDBY1],
      x.[W_REQUESTEDDT],
      x.[W_REQUESTEDBY],
      x.[W_APPRVDBY2],
      x.[W_APPRVDDT1],
      x.[W_APPRVDDT2]
   FROM [clt_NetO].[GF_TLR_DISBURSEMENTS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_FMETHOD] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_DISBURSEMENTS' and A0.[COLUMNNAME] = 'S_FMETHOD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_FSTATUS] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_DISBURSEMENTS' and A1.[COLUMNNAME] = 'S_FSTATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLR_DISBURSEMENTS' and A2.[COLUMNNAME] = 'S_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[ACH_ACCOUNT_TYPE] = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TLR_DISBURSEMENTS' and A3.[COLUMNNAME] = 'ACH_ACCOUNT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[ACH_DEBIT_OR_CREDIT] = A4.[DBSYMBOL] AND A4.[TableName] = 'GF_TLR_DISBURSEMENTS' and A4.[COLUMNNAME] = 'ACH_DEBIT_OR_CREDIT'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
