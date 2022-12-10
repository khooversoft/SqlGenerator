-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLR_DISBURSEMENTS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[MODIFIED_USERID] AS [MODIFIED_USERID],
      x.[S_FMETHOD] AS [S_FMETHOD],
      A0.[Descript] AS [S_FMETHOD_X],
      x.[S_FSTATUS] AS [S_FSTATUS],
      A1.[Descript] AS [S_FSTATUS_X],
      x.[S_DMETHOD] AS [S_DMETHOD],
      x.[AMOUNT] AS [AMOUNT],
      HASHBYTES('SHA2_256', x.[PAYEE_NAME]) AS [PAYEE_NAME],
      HASHBYTES('SHA2_256', x.[PAYEE_ADDRESS]) AS [PAYEE_ADDRESS],
      HASHBYTES('SHA2_256', x.[PAYEE_CITY]) AS [PAYEE_CITY],
      HASHBYTES('SHA2_256', x.[PAYEE_STATE]) AS [PAYEE_STATE],
      HASHBYTES('SHA2_256', x.[PAYEE_ZIP]) AS [PAYEE_ZIP],
      x.[ISSUEDATE] AS [ISSUEDATE],
      x.[REQDATE] AS [REQDATE],
      x.[S_TYPE] AS [S_TYPE],
      A2.[Descript] AS [S_TYPE_X],
      x.[S_FUNDLOC] AS [S_FUNDLOC],
      x.[ROUTENUM] AS [ROUTENUM],
      x.[ACCOUNTNUM] AS [ACCOUNTNUM],
      x.[TRANSNUM] AS [TRANSNUM],
      x.[TRANSREF] AS [TRANSREF],
      x.[BENNAME] AS [BENNAME],
      x.[BENACCTNUM] AS [BENACCTNUM],
      x.[BENNOTES] AS [BENNOTES],
      x.[BENFILEREFNUM] AS [BENFILEREFNUM],
      x.[BENBANKNAME] AS [BENBANKNAME],
      x.[BENABANUM] AS [BENABANUM],
      x.[BENLOCATION] AS [BENLOCATION],
      x.[BENBANKNOTES] AS [BENBANKNOTES],
      x.[BFDUSED] AS [BFDUSED],
      x.[BFDOVERRIDE] AS [BFDOVERRIDE],
      x.[BFDBANKNAME] AS [BFDBANKNAME],
      x.[BFDABANUM] AS [BFDABANUM],
      x.[BFDLOCATION] AS [BFDLOCATION],
      x.[BFDBANKNOTES] AS [BFDBANKNOTES],
      x.[IBDUSED] AS [IBDUSED],
      x.[IBDOVERRIDE] AS [IBDOVERRIDE],
      x.[IBDBANKNAME] AS [IBDBANKNAME],
      x.[IBDABANUM] AS [IBDABANUM],
      x.[IBDLOCATION] AS [IBDLOCATION],
      x.[IBDBANKNOTES] AS [IBDBANKNOTES],
      x.[DATE_PROCESSED] AS [DATE_PROCESSED],
      x.[CONFIRMED_YN] AS [CONFIRMED_YN],
      x.[DATE_CONFIRMED] AS [DATE_CONFIRMED],
      x.[FROM_GL_ACCT] AS [FROM_GL_ACCT],
      x.[TO_GL_ACCT] AS [TO_GL_ACCT],
      x.[BATCHID] AS [BATCHID],
      x.[CANCEL_OR_VOID] AS [CANCEL_OR_VOID],
      x.[DATE_TERMINATED] AS [DATE_TERMINATED],
      x.[DISB_DESCRIPTION] AS [DISB_DESCRIPTION],
      x.[PROCESS_YN] AS [PROCESS_YN],
      HASHBYTES('SHA2_256', x.[PAYEE_ADDRESS2]) AS [PAYEE_ADDRESS2],
      HASHBYTES('SHA2_256', x.[PAYEE_TITLE]) AS [PAYEE_TITLE],
      x.[WIRE_BANK_CID] AS [WIRE_BANK_CID],
      x.[WIRECTR] AS [WIRECTR],
      x.[BEN_CREDIT_TO_ACCT] AS [BEN_CREDIT_TO_ACCT],
      x.[BEN_CREDIT_TO_NAME] AS [BEN_CREDIT_TO_NAME],
      HASHBYTES('SHA2_256', x.[PAYEE_COUNTRY]) AS [PAYEE_COUNTRY],
      x.[WIRE_CONFIRMATION_NBR] AS [WIRE_CONFIRMATION_NBR],
      x.[DISBDESC] AS [DISBDESC],
      x.[ACH_ACCOUNT_TYPE] AS [ACH_ACCOUNT_TYPE],
      A3.[Descript] AS [ACH_ACCOUNT_TYPE_X],
      x.[ACH_DEBIT_OR_CREDIT] AS [ACH_DEBIT_OR_CREDIT],
      A4.[Descript] AS [ACH_DEBIT_OR_CREDIT_X],
      x.[ACH_ROUTING_NUMBER] AS [ACH_ROUTING_NUMBER],
      x.[ACH_ACCOUNT_NUMBER] AS [ACH_ACCOUNT_NUMBER],
      x.[W_APPRVDBY1] AS [W_APPRVDBY1],
      x.[W_REQUESTEDDT] AS [W_REQUESTEDDT],
      x.[W_REQUESTEDBY] AS [W_REQUESTEDBY],
      x.[W_APPRVDBY2] AS [W_APPRVDBY2],
      x.[W_APPRVDDT1] AS [W_APPRVDDT1],
      x.[W_APPRVDDT2] AS [W_APPRVDDT2]
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
