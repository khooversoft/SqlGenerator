-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TL_LOAN_CONTACTS]
AS
   SELECT
      x.[LNUM],
      x.[CID_ACCOUNT_EXECUTIVE],
      x.[CID_APPRAISAL_COMPANY],
      x.[CID_APPRAISER],
      x.[CID_ATTORNEY],
      x.[CID_BANK_ATTORNEY],
      x.[CID_BANKING_INSTITUTION],
      x.[CID_BRANCH],
      x.[CID_CLOSER],
      x.[CID_CLOSING_AGENT],
      x.[CID_CLOSING_LENDER],
      x.[CID_CORRESPONDENT],
      x.[CID_CREDIT_BUREAU],
      x.[CID_DOC_PREP_AGENCY],
      x.[CID_DOC_PREPARER],
      x.[CID_ECOA_FEDERAL_AGENCY],
      x.[CID_FUNDER],
      x.[CID_FUNDING_LOCATION],
      x.[CID_INVESTOR],
      x.[CID_LOAN_OFFICER],
      x.[CID_LOAN_SERVICER],
      x.[CID_MI_AGENT],
      x.[CID_MI_COMPANY],
      x.[CID_MANUFACTURER],
      x.[CID_MORTGAGE_BROKER],
      x.[CID_MORTGAGE_BROKER_AGENT],
      x.[CID_ORIGINATING_LENDER],
      x.[CID_ORIGINATOR],
      x.[CID_POST_CLOSER],
      x.[CID_PROCESSOR],
      x.[CID_REGION],
      x.[CID_SALES_REPRESENTATIVE],
      x.[CID_SETTLEMENT_AGENT],
      x.[CID_TITLE],
      x.[CID_TITLE_INSURER],
      x.[CID_TRUSTEE],
      x.[CID_UNDERWRITER],
      x.[CID_LOAN_CONSULTANT],
      x.[CID_FLOOD_INS_CO],
      x.[CID_HAZARD_INS_CO],
      x.[CID_HOA],
      x.[CID_TERMITE_CO],
      x.[CID_TITLEINS_UW],
      x.[CID_CLOSING_ASSIST],
      x.[CID_DIVISION],
      x.[CID_DIV_MGR],
      x.[CID_HMDA_ECOA_SPCLST],
      x.[CID_REGION_MGR],
      x.[CID_BRANCH_MGR],
      x.[CID_BROKER_PRINCIPAL],
      x.[CID_BROKER_BRANCH],
      x.[CID_CMS_OL_BUSINESS_CHAN],
      x.[CID_CMS_CL_BUSINESS_CHAN],
      x.[CID_CMS_OL_PRINCIPAL],
      x.[CID_CMS_CL_PRINCIPAL],
      x.[CID_BROKER_ACNT_EXEC],
      x.[CID_BROKER_REL_MGR],
      x.[CID_BROKER_PROCESSOR],
      x.[CID_COMPLIANCE],
      x.[CID_APPRAISERCOORDINATOR],
      x.[CID_QC_AUDITOR],
      x.[CID_SPECIAL_INVEST_REVIEWER],
      x.[CID_CREDIT_RISK_REVIEWER],
      x.[CID_COLLAT_RISK_REVIEWER],
      x.[CID_SERVICING_REVIEWER],
      x.[CID_SECONDARY_REP],
      x.[CID_DOC_CUSTODIAN],
      x.[CID_HR_APPROVER],
      x.[CID_DEALER],
      x.[CID_CNSLNDMGR],
      x.[CID_RTLLNDMGR],
      x.[CID_CHFLNDOFF],
      x.[CID_PRODCRMGR],
      x.[CID_REFRTLNDMGR],
      x.[CID_MTGORGPRDMGR],
      x.[CID_PRCUNDMGR],
      x.[CID_MTGPROC],
      x.[CID_MTGCLERK],
      x.[CID_CLOSESUPER],
      x.[CID_WHLSMRKMGR],
      x.[CID_WHLSASSTMGR],
      x.[CID_WHLSUNDER],
      x.[CID_WHLSPROCESS],
      x.[CID_WHLSCLOSER],
      x.[CID_WHLSCLERK],
      x.[CID_REGPRES],
      x.[CID_DISTMGR],
      x.[CID_AREA],
      x.[CID_BRCHASSTMGR],
      x.[CID_PRSBANKER],
      x.[CID_MNGTRAINEE],
      x.[CID_CALLCNTMGR],
      x.[CID_CALLCNTASTMGR],
      x.[CID_CALLCNTLO],
      x.[CID_CALLCNTSUPR],
      x.[CID_CALLCNTCSR],
      x.[CID_FLDSRVPRVDR],
      x.[CID_CRDINS],
      x.[CID_COLINSCO],
      x.[CID_COLINSAGNT],
      x.[CID_TAXSVCPRVD],
      x.[CID_APPATRNY],
      x.[CID_MORTGAGE_LIFE_INSURER],
      x.[CID_MORTGAGE_LIFE_AGENT],
      x.[CID_CORP_APPROVER],
      x.[CID_SELLING_LENDER],
      x.[CID_INTERIMFUNDER],
      x.[CID_SUBSERVICER],
      x.[CID_WAREHOUSE],
      x.[CID_LISTINGAGENT]
   FROM [clt_NetO].[GF_TL_LOAN_CONTACTS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
