-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwLIABLTY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[LIABCTR] AS [LIABCTR],
      x.[S_LIAB] AS [S_LIAB],
      x.[LIABDESC] AS [LIABDESC],
      x.[ACCTNUM] AS [ACCTNUM],
      x.[HOLDER] AS [HOLDER],
      x.[HADDR1] AS [HADDR1],
      x.[HADDR2] AS [HADDR2],
      x.[HCITY] AS [HCITY],
      x.[HSTATE] AS [HSTATE],
      x.[HZIP] AS [HZIP],
      x.[HPHONE] AS [HPHONE],
      x.[HEXT] AS [HEXT],
      x.[HFAX] AS [HFAX],
      x.[ATTNOF] AS [ATTNOF],
      x.[ACCTBAL] AS [ACCTBAL],
      x.[ACCTPYMT] AS [ACCTPYMT],
      x.[S_PAYPER] AS [S_PAYPER],
      x.[MTHPYMT] AS [MTHPYMT],
      x.[PYMTLEFT] AS [PYMTLEFT],
      x.[INCPYMT] AS [INCPYMT],
      x.[INCBAL] AS [INCBAL],
      x.[DATEPAID] AS [DATEPAID],
      x.[ACCTIN] AS [ACCTIN],
      x.[REOCNTR] AS [REOCNTR],
      x.[MNPAYLFT] AS [MNPAYLFT],
      x.[VERIFIED] AS [VERIFIED],
      x.[CRDTCTR] AS [CRDTCTR],
      x.[ORIGAMT] AS [ORIGAMT],
      x.[PAYTYPE] AS [PAYTYPE],
      x.[VERIFY] AS [VERIFY],
      x.[S_LIENPS] AS [S_LIENPS],
      x.[ORIGDBTDT] AS [ORIGDBTDT],
      x.[EXPDBTDT] AS [EXPDBTDT],
      x.[RESUBIND] AS [RESUBIND],
      x.[OMIT] AS [OMIT],
      x.[MTG_TYPE_DESCRIPT] AS [MTG_TYPE_DESCRIPT],
      x.[PURCH_MONEY_IND] AS [PURCH_MONEY_IND],
      x.[S_EXCLUSION_REASON] AS [S_EXCLUSION_REASON],
      x.[S_MTG_TYPE] AS [S_MTG_TYPE],
      x.[SECURITY_INSTR_VOLUME] AS [SECURITY_INSTR_VOLUME],
      x.[DEBT_CCTIN_TITLE] AS [DEBT_CCTIN_TITLE],
      x.[TRUSTEE_NAME] AS [TRUSTEE_NAME],
      x.[TRUSTEE_ADDR1] AS [TRUSTEE_ADDR1],
      x.[TRUSTEE_CITY] AS [TRUSTEE_CITY],
      x.[TRUSTEE_STATE] AS [TRUSTEE_STATE],
      x.[TRUSTEE_ZIP] AS [TRUSTEE_ZIP],
      x.[EXECUTEDDATE] AS [EXECUTEDDATE],
      x.[RECDATE] AS [RECDATE],
      x.[RECBOOK] AS [RECBOOK],
      x.[RECPAGE] AS [RECPAGE],
      x.[RECCITY] AS [RECCITY],
      x.[RECNUM] AS [RECNUM],
      x.[HELOCMAXBAL] AS [HELOCMAXBAL],
      x.[OTHERDEBTTYPEDESC] AS [OTHERDEBTTYPEDESC],
      x.[DEBTPERDIEM] AS [DEBTPERDIEM],
      x.[DEBTPAYOFFTHRUDT] AS [DEBTPAYOFFTHRUDT],
      x.[CLOSE_DATE] AS [CLOSE_DATE],
      x.[OPENED_DATE] AS [OPENED_DATE],
      x.[HIGH_CREDIT] AS [HIGH_CREDIT],
      x.[PER_DIEM_CALC] AS [PER_DIEM_CALC],
      x.[PER_DIEM_OVERRIDE] AS [PER_DIEM_OVERRIDE],
      x.[INTEREST_RATE] AS [INTEREST_RATE],
      x.[SECURED] AS [SECURED],
      x.[MARGIN_DEBT] AS [MARGIN_DEBT],
      x.[INVESTMENT_CREDIT_LINE] AS [INVESTMENT_CREDIT_LINE],
      x.[CREDIT_TYPE_OTH] AS [CREDIT_TYPE_OTH],
      x.[S_CREDIT_CARD_TYPE] AS [S_CREDIT_CARD_TYPE],
      x.[INTERNAL_REFI] AS [INTERNAL_REFI],
      x.[HCOUNTRY] AS [HCOUNTRY],
      x.[SOURCE_CB_PMT] AS [SOURCE_CB_PMT],
      x.[RECCOUNTY] AS [RECCOUNTY],
      x.[RELEASE_FIN_INFO] AS [RELEASE_FIN_INFO],
      x.[DEBT_ESTABLISH_STATE] AS [DEBT_ESTABLISH_STATE],
      x.[JOINT_BNUM] AS [JOINT_BNUM],
      x.[DEBT_VERIFI_TYPE] AS [DEBT_VERIFI_TYPE],
      x.[DEBT_VERI_TYPE_DESC] AS [DEBT_VERI_TYPE_DESC],
      x.[CLOSE_ACCOUNT] AS [CLOSE_ACCOUNT],
      x.[REFIN_SERV_SYS] AS [REFIN_SERV_SYS],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[CREDITLIABILITYID] AS [CREDITLIABILITYID],
      x.[DOCUMENT_NO] AS [DOCUMENT_NO],
      x.[SERIAL_NUMBER] AS [SERIAL_NUMBER],
      x.[DEBT_ROUTING_NO] AS [DEBT_ROUTING_NO],
      x.[BENEFICIARY_NAME] AS [BENEFICIARY_NAME],
      x.[BEN_ACCT_NUM] AS [BEN_ACCT_NUM],
      x.[NOTE_TO_BENEFICIARY] AS [NOTE_TO_BENEFICIARY],
      x.[NOTE_TO_BANK] AS [NOTE_TO_BANK],
      x.[REENTER_ACCT_NUM] AS [REENTER_ACCT_NUM],
      x.[DEBT_REROUTING_NO] AS [DEBT_REROUTING_NO],
      x.[REBEN_ACCT_NUM] AS [REBEN_ACCT_NUM],
      x.[S_LIABILITYDISBTYPE] AS [S_LIABILITYDISBTYPE],
      x.[P_PYMTLEFT] AS [P_PYMTLEFT],
      x.[P_MNPAYLFT] AS [P_MNPAYLFT],
      x.[P_BALANCE] AS [P_BALANCE],
      x.[P_AMOUNT] AS [P_AMOUNT],
      x.[P_PARTIALIND] AS [P_PARTIALIND],
      x.[LIABLTY_INDICATOR] AS [LIABLTY_INDICATOR],
      x.[OWNERSHP_TYPE] AS [OWNERSHP_TYPE],
      x.[DEDUCT_FROM_INC] AS [DEDUCT_FROM_INC],
      x.[S_ACCOUNT_OWNERSHIP] AS [S_ACCOUNT_OWNERSHIP],
      x.[LATE_30_DAYS] AS [LATE_30_DAYS],
      x.[LATE_60_DAYS] AS [LATE_60_DAYS],
      x.[LATE_90_DAYS] AS [LATE_90_DAYS],
      x.[LATE_120_DAYS] AS [LATE_120_DAYS],
      HASHBYTES('SHA2_256', CAST(x.[CREDIT_LIMIT_AMOUNT] AS NVARCHAR(50))) AS [CREDIT_LIMIT_AMOUNT],
      x.[INC_CREDIT_LINE] AS [INC_CREDIT_LINE]
   FROM [clt_NetO].[LIABLTY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
