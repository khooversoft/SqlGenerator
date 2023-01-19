-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TLR_DISBURSEMENTS]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      HASHBYTES('SHA2_256', CAST(x.[MODIFIED_USERID] AS NVARCHAR(50))) AS [MODIFIED_USERID],
      x.[S_FMETHOD],
      A0.[Descript] AS [S_FMETHOD_X],
      x.[S_FSTATUS],
      A1.[Descript] AS [S_FSTATUS_X],
      x.[S_DMETHOD],
      x.[AMOUNT],
      HASHBYTES('SHA2_256', x.[PAYEE_NAME]) AS [PAYEE_NAME],
      HASHBYTES('SHA2_256', x.[PAYEE_ADDRESS]) AS [PAYEE_ADDRESS],
      HASHBYTES('SHA2_256', x.[PAYEE_CITY]) AS [PAYEE_CITY],
      HASHBYTES('SHA2_256', x.[PAYEE_STATE]) AS [PAYEE_STATE],
      HASHBYTES('SHA2_256', x.[PAYEE_ZIP]) AS [PAYEE_ZIP],
      x.[ISSUEDATE],
      x.[REQDATE],
      x.[S_TYPE],
      A2.[Descript] AS [S_TYPE_X],
      x.[S_FUNDLOC],
      x.[ROUTENUM],
      HASHBYTES('SHA2_256', x.[ACCOUNTNUM]) AS [ACCOUNTNUM],
      HASHBYTES('SHA2_256', x.[TRANSNUM]) AS [TRANSNUM],
      x.[TRANSREF],
      HASHBYTES('SHA2_256', x.[BENNAME]) AS [BENNAME],
      HASHBYTES('SHA2_256', x.[BENACCTNUM]) AS [BENACCTNUM],
      x.[BENNOTES],
      HASHBYTES('SHA2_256', x.[BENFILEREFNUM]) AS [BENFILEREFNUM],
      HASHBYTES('SHA2_256', x.[BENBANKNAME]) AS [BENBANKNAME],
      HASHBYTES('SHA2_256', x.[BENABANUM]) AS [BENABANUM],
      HASHBYTES('SHA2_256', x.[BENLOCATION]) AS [BENLOCATION],
      x.[BENBANKNOTES],
      x.[BFDUSED],
      x.[BFDOVERRIDE],
      HASHBYTES('SHA2_256', x.[BFDBANKNAME]) AS [BFDBANKNAME],
      HASHBYTES('SHA2_256', x.[BFDABANUM]) AS [BFDABANUM],
      x.[BFDLOCATION],
      x.[BFDBANKNOTES],
      x.[IBDUSED],
      x.[IBDOVERRIDE],
      x.[IBDBANKNAME],
      HASHBYTES('SHA2_256', x.[IBDABANUM]) AS [IBDABANUM],
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
      HASHBYTES('SHA2_256', x.[PAYEE_ADDRESS2]) AS [PAYEE_ADDRESS2],
      HASHBYTES('SHA2_256', x.[PAYEE_TITLE]) AS [PAYEE_TITLE],
      HASHBYTES('SHA2_256', CAST(x.[WIRE_BANK_CID] AS NVARCHAR(50))) AS [WIRE_BANK_CID],
      x.[WIRECTR],
      HASHBYTES('SHA2_256', x.[BEN_CREDIT_TO_ACCT]) AS [BEN_CREDIT_TO_ACCT],
      HASHBYTES('SHA2_256', x.[BEN_CREDIT_TO_NAME]) AS [BEN_CREDIT_TO_NAME],
      HASHBYTES('SHA2_256', x.[PAYEE_COUNTRY]) AS [PAYEE_COUNTRY],
      HASHBYTES('SHA2_256', x.[WIRE_CONFIRMATION_NBR]) AS [WIRE_CONFIRMATION_NBR],
      x.[DISBDESC],
      x.[ACH_ACCOUNT_TYPE],
      A3.[Descript] AS [ACH_ACCOUNT_TYPE_X],
      HASHBYTES('SHA2_256', x.[ACH_DEBIT_OR_CREDIT]) AS [ACH_DEBIT_OR_CREDIT],
      A4.[Descript] AS [ACH_DEBIT_OR_CREDIT_X],
      HASHBYTES('SHA2_256', x.[ACH_ROUTING_NUMBER]) AS [ACH_ROUTING_NUMBER],
      HASHBYTES('SHA2_256', x.[ACH_ACCOUNT_NUMBER]) AS [ACH_ACCOUNT_NUMBER],
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