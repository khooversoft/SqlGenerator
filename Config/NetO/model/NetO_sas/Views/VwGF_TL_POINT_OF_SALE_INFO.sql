-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TL_POINT_OF_SALE_INFO]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[S_REFSC] AS [S_REFSC],
      x.[TBDADDR] AS [TBDADDR],
      x.[POSFHA] AS [POSFHA],
      x.[S_PROPTYPE] AS [S_PROPTYPE],
      x.[PROJCLAS] AS [PROJCLAS],
      x.[PROJNAME] AS [PROJNAME],
      x.[DPPERCT] AS [DPPERCT],
      x.[HELINE] AS [HELINE],
      x.[HECURBAL] AS [HECURBAL],
      x.[S_DOCLVL] AS [S_DOCLVL],
      x.[S_LNSTATUS] AS [S_LNSTATUS],
      x.[HLTVH] AS [HLTVH],
      x.[TSWE_INC_EXPECTED] AS [TSWE_INC_EXPECTED],
      x.[QUAL_TSWE_LOAN] AS [QUAL_TSWE_LOAN],
      x.[LNSTATUS_DT] AS [LNSTATUS_DT],
      x.[SCHEME_ID] AS [SCHEME_ID],
      x.[BORRCONTACTMETH] AS [BORRCONTACTMETH],
      x.[EST_PROCESSING_DAYS] AS [EST_PROCESSING_DAYS],
      x.[TABLE_FUNDED_IND] AS [TABLE_FUNDED_IND],
      x.[WAIT_WAIVED_BPOC] AS [WAIT_WAIVED_BPOC],
      x.[WAIT_WAIVED_CLOSDT] AS [WAIT_WAIVED_CLOSDT],
      x.[USE_RESPA_2010] AS [USE_RESPA_2010],
      x.[LO_NAME_OVR] AS [LO_NAME_OVR],
      x.[LO_NMLS_NUM_OVR] AS [LO_NMLS_NUM_OVR],
      x.[LO_PHONE_OVR] AS [LO_PHONE_OVR],
      x.[S_GFE_TIME_ZONE] AS [S_GFE_TIME_ZONE],
      x.[ALLOWWITHDRAWLOAN] AS [ALLOWWITHDRAWLOAN],
      x.[GFE_INT_RATE_LSC] AS [GFE_INT_RATE_LSC],
      x.[GFE_INT_RATE_LIR] AS [GFE_INT_RATE_LIR],
      x.[GFE_SET_CHRG_LSC] AS [GFE_SET_CHRG_LSC],
      x.[GFE_SET_CHRG_LIR] AS [GFE_SET_CHRG_LIR],
      x.[MAXLTV] AS [MAXLTV],
      x.[EMPLOYEE_LOAN_YN] AS [EMPLOYEE_LOAN_YN],
      x.[HIGH_PRICE_LOAN_YN] AS [HIGH_PRICE_LOAN_YN],
      x.[MONTHLY_ESCROW_TOTAL] AS [MONTHLY_ESCROW_TOTAL],
      x.[REFI_LOAN_ACCT_NBR] AS [REFI_LOAN_ACCT_NBR],
      x.[LO_NMLS_NUM] AS [LO_NMLS_NUM],
      x.[LO_COMP_NMLS_NUM] AS [LO_COMP_NMLS_NUM],
      x.[DU_DISPLAY] AS [DU_DISPLAY],
      x.[LP2_RISK_CLASS] AS [LP2_RISK_CLASS],
      x.[AUTO_UW_YN] AS [AUTO_UW_YN],
      x.[VA_TOT_RESID_INCOME] AS [VA_TOT_RESID_INCOME],
      x.[PER_DIEM_CALC_BASIS] AS [PER_DIEM_CALC_BASIS],
      x.[PER_DIEM] AS [PER_DIEM],
      x.[PER_DIEM_INTEREST] AS [PER_DIEM_INTEREST],
      x.[ESCROW_CUSHION_MNTH] AS [ESCROW_CUSHION_MNTH],
      x.[SPEC_FLOOD_HAZ_AREA] AS [SPEC_FLOOD_HAZ_AREA],
      x.[NFIP_FLOOD_ZONE_ID] AS [NFIP_FLOOD_ZONE_ID],
      x.[SCHEME_VERSION] AS [SCHEME_VERSION],
      x.[HLTV_ROUNDED] AS [HLTV_ROUNDED],
      x.[CHECKLOANSTATUS] AS [CHECKLOANSTATUS],
      x.[TOTAL_PROPOSED_HOUSING_EXP] AS [TOTAL_PROPOSED_HOUSING_EXP],
      x.[SELLER_OUT_MORT] AS [SELLER_OUT_MORT],
      x.[LO_EMAIL_OVR] AS [LO_EMAIL_OVR],
      x.[USE_NEW_ESCROW_CALC] AS [USE_NEW_ESCROW_CALC],
      x.[SPONSORORIG] AS [SPONSORORIG],
      x.[ACH_SELECTED] AS [ACH_SELECTED],
      x.[REFERREDBY] AS [REFERREDBY],
      x.[LO_EMPLOYER_OVR] AS [LO_EMPLOYER_OVR],
      x.[LO_ADDR1_OVR] AS [LO_ADDR1_OVR],
      x.[LO_CSZ_OVR] AS [LO_CSZ_OVR],
      x.[TIL_UNDER_DISCL_AMT] AS [TIL_UNDER_DISCL_AMT],
      x.[LO_COMP_NMLS_NO_OVR] AS [LO_COMP_NMLS_NO_OVR],
      x.[ORIGINATOR_NMLS_NO] AS [ORIGINATOR_NMLS_NO],
      x.[APP_DATE_REQUIREMENTS_MET] AS [APP_DATE_REQUIREMENTS_MET],
      x.[IS_TEMPORARY_FINANCING_LOAN] AS [IS_TEMPORARY_FINANCING_LOAN],
      x.[LO_PROPST_LICNUM_OVR] AS [LO_PROPST_LICNUM_OVR],
      x.[ADJHCLTV] AS [ADJHCLTV],
      x.[PRODNAMEPARAM_EMAIL] AS [PRODNAMEPARAM_EMAIL],
      x.[LP2_RISK_CLASS_OVR] AS [LP2_RISK_CLASS_OVR],
      x.[DU_DISPLAY_OVR] AS [DU_DISPLAY_OVR]
   FROM [clt_NetO].[GF_TL_POINT_OF_SALE_INFO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
