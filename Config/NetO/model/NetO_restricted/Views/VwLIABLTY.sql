-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwLIABLTY]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[LIABCTR],
      x.[S_LIAB],
      A0.[Descript] AS [S_LIAB_X],
      x.[LIABDESC],
      HASHBYTES('SHA2_256', x.[ACCTNUM]) AS [ACCTNUM],
      x.[HOLDER],
      HASHBYTES('SHA2_256', x.[HADDR1]) AS [HADDR1],
      HASHBYTES('SHA2_256', x.[HADDR2]) AS [HADDR2],
      x.[HCITY],
      HASHBYTES('SHA2_256', x.[HSTATE]) AS [HSTATE],
      x.[HZIP],
      HASHBYTES('SHA2_256', x.[HPHONE]) AS [HPHONE],
      x.[HEXT],
      x.[HFAX],
      x.[ATTNOF],
      HASHBYTES('SHA2_256', CAST(x.[ACCTBAL] AS NVARCHAR(50))) AS [ACCTBAL],
      x.[ACCTPYMT],
      x.[S_PAYPER],
      A1.[Descript] AS [S_PAYPER_X],
      HASHBYTES('SHA2_256', CAST(x.[MTHPYMT] AS NVARCHAR(50))) AS [MTHPYMT],
      x.[PYMTLEFT],
      HASHBYTES('SHA2_256', x.[INCPYMT]) AS [INCPYMT],
      x.[INCBAL],
      x.[DATEPAID],
      x.[ACCTIN],
      HASHBYTES('SHA2_256', CAST(x.[REOCNTR] AS NVARCHAR(50))) AS [REOCNTR],
      x.[MNPAYLFT],
      x.[VERIFIED],
      x.[CRDTCTR],
      x.[ORIGAMT],
      x.[PAYTYPE],
      x.[VERIFY],
      x.[S_LIENPS],
      A2.[Descript] AS [S_LIENPS_X],
      x.[ORIGDBTDT],
      x.[EXPDBTDT],
      x.[RESUBIND],
      x.[OMIT],
      x.[MTG_TYPE_DESCRIPT],
      x.[PURCH_MONEY_IND],
      x.[S_EXCLUSION_REASON],
      A3.[Descript] AS [S_EXCLUSION_REASON_X],
      x.[S_MTG_TYPE],
      A4.[Descript] AS [S_MTG_TYPE_X],
      x.[SECURITY_INSTR_VOLUME],
      x.[DEBT_CCTIN_TITLE],
      HASHBYTES('SHA2_256', x.[TRUSTEE_NAME]) AS [TRUSTEE_NAME],
      HASHBYTES('SHA2_256', x.[TRUSTEE_ADDR1]) AS [TRUSTEE_ADDR1],
      HASHBYTES('SHA2_256', x.[TRUSTEE_CITY]) AS [TRUSTEE_CITY],
      HASHBYTES('SHA2_256', x.[TRUSTEE_STATE]) AS [TRUSTEE_STATE],
      HASHBYTES('SHA2_256', x.[TRUSTEE_ZIP]) AS [TRUSTEE_ZIP],
      x.[EXECUTEDDATE],
      x.[RECDATE],
      x.[RECBOOK],
      x.[RECPAGE],
      HASHBYTES('SHA2_256', x.[RECCITY]) AS [RECCITY],
      x.[RECNUM],
      x.[HELOCMAXBAL],
      x.[OTHERDEBTTYPEDESC],
      HASHBYTES('SHA2_256', CAST(x.[DEBTPERDIEM] AS NVARCHAR(50))) AS [DEBTPERDIEM],
      HASHBYTES('SHA2_256', CAST(x.[DEBTPAYOFFTHRUDT] AS NVARCHAR(50))) AS [DEBTPAYOFFTHRUDT],
      x.[CLOSE_DATE],
      x.[OPENED_DATE],
      HASHBYTES('SHA2_256', CAST(x.[HIGH_CREDIT] AS NVARCHAR(50))) AS [HIGH_CREDIT],
      x.[PER_DIEM_CALC],
      x.[PER_DIEM_OVERRIDE],
      x.[INTEREST_RATE],
      x.[SECURED],
      x.[MARGIN_DEBT],
      x.[INVESTMENT_CREDIT_LINE],
      x.[CREDIT_TYPE_OTH],
      HASHBYTES('SHA2_256', x.[S_CREDIT_CARD_TYPE]) AS [S_CREDIT_CARD_TYPE],
      A5.[Descript] AS [S_CREDIT_CARD_TYPE_X],
      x.[INTERNAL_REFI],
      x.[HCOUNTRY],
      x.[SOURCE_CB_PMT],
      HASHBYTES('SHA2_256', x.[RECCOUNTY]) AS [RECCOUNTY],
      HASHBYTES('SHA2_256', x.[RELEASE_FIN_INFO]) AS [RELEASE_FIN_INFO],
      x.[DEBT_ESTABLISH_STATE],
      x.[JOINT_BNUM],
      x.[DEBT_VERIFI_TYPE],
      A6.[Descript] AS [DEBT_VERIFI_TYPE_X],
      x.[DEBT_VERI_TYPE_DESC],
      x.[CLOSE_ACCOUNT],
      x.[REFIN_SERV_SYS],
      A7.[Descript] AS [REFIN_SERV_SYS_X],
      x.[RECORD_CREATED],
      x.[CREDITLIABILITYID],
      HASHBYTES('SHA2_256', x.[DOCUMENT_NO]) AS [DOCUMENT_NO],
      HASHBYTES('SHA2_256', x.[SERIAL_NUMBER]) AS [SERIAL_NUMBER],
      HASHBYTES('SHA2_256', x.[DEBT_ROUTING_NO]) AS [DEBT_ROUTING_NO],
      HASHBYTES('SHA2_256', x.[BENEFICIARY_NAME]) AS [BENEFICIARY_NAME],
      HASHBYTES('SHA2_256', x.[BEN_ACCT_NUM]) AS [BEN_ACCT_NUM],
      HASHBYTES('SHA2_256', x.[NOTE_TO_BENEFICIARY]) AS [NOTE_TO_BENEFICIARY],
      HASHBYTES('SHA2_256', x.[NOTE_TO_BANK]) AS [NOTE_TO_BANK],
      HASHBYTES('SHA2_256', x.[REENTER_ACCT_NUM]) AS [REENTER_ACCT_NUM],
      HASHBYTES('SHA2_256', x.[DEBT_REROUTING_NO]) AS [DEBT_REROUTING_NO],
      HASHBYTES('SHA2_256', x.[REBEN_ACCT_NUM]) AS [REBEN_ACCT_NUM],
      x.[S_LIABILITYDISBTYPE],
      A8.[Descript] AS [S_LIABILITYDISBTYPE_X],
      x.[P_PYMTLEFT],
      x.[P_MNPAYLFT],
      x.[P_BALANCE],
      x.[P_AMOUNT],
      x.[P_PARTIALIND],
      x.[LIABLTY_INDICATOR],
      HASHBYTES('SHA2_256', x.[OWNERSHP_TYPE]) AS [OWNERSHP_TYPE],
      A9.[Descript] AS [OWNERSHP_TYPE_X],
      x.[DEDUCT_FROM_INC],
      x.[S_ACCOUNT_OWNERSHIP],
      A10.[Descript] AS [S_ACCOUNT_OWNERSHIP_X],
      x.[LATE_30_DAYS],
      x.[LATE_60_DAYS],
      x.[LATE_90_DAYS],
      x.[LATE_120_DAYS],
      HASHBYTES('SHA2_256', CAST(x.[CREDIT_LIMIT_AMOUNT] AS NVARCHAR(50))) AS [CREDIT_LIMIT_AMOUNT],
      HASHBYTES('SHA2_256', x.[INC_CREDIT_LINE]) AS [INC_CREDIT_LINE]
   FROM [clt_NetO].[LIABLTY] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_LIAB] = A0.[DBSYMBOL] AND A0.[TableName] = 'LIABLTY' and A0.[COLUMNNAME] = 'S_LIAB'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_PAYPER] = A1.[DBSYMBOL] AND A1.[TableName] = 'LIABLTY' and A1.[COLUMNNAME] = 'S_PAYPER'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_LIENPS] = A2.[DBSYMBOL] AND A2.[TableName] = 'LIABLTY' and A2.[COLUMNNAME] = 'S_LIENPS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_EXCLUSION_REASON] = A3.[DBSYMBOL] AND A3.[TableName] = 'LIABLTY' and A3.[COLUMNNAME] = 'S_EXCLUSION_REASON'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_MTG_TYPE] = A4.[DBSYMBOL] AND A4.[TableName] = 'LIABLTY' and A4.[COLUMNNAME] = 'S_MTG_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_CREDIT_CARD_TYPE] = A5.[DBSYMBOL] AND A5.[TableName] = 'LIABLTY' and A5.[COLUMNNAME] = 'S_CREDIT_CARD_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[DEBT_VERIFI_TYPE] = A6.[DBSYMBOL] AND A6.[TableName] = 'LIABLTY' and A6.[COLUMNNAME] = 'DEBT_VERIFI_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.[REFIN_SERV_SYS] = A7.[DBSYMBOL] AND A7.[TableName] = 'LIABLTY' and A7.[COLUMNNAME] = 'REFIN_SERV_SYS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.[S_LIABILITYDISBTYPE] = A8.[DBSYMBOL] AND A8.[TableName] = 'LIABLTY' and A8.[COLUMNNAME] = 'S_LIABILITYDISBTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.[OWNERSHP_TYPE] = A9.[DBSYMBOL] AND A9.[TableName] = 'LIABLTY' and A9.[COLUMNNAME] = 'OWNERSHP_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.[S_ACCOUNT_OWNERSHIP] = A10.[DBSYMBOL] AND A10.[TableName] = 'LIABLTY' and A10.[COLUMNNAME] = 'S_ACCOUNT_OWNERSHIP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
