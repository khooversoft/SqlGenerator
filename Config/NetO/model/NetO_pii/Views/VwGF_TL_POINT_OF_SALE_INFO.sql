-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TL_POINT_OF_SALE_INFO]
AS
   SELECT
      x.[LNUM],
      x.[S_REFSC],
      A0.Descript AS [REFSC],
      x.[TBDADDR],
      x.[POSFHA],
      x.[S_PROPTYPE],
      A1.Descript AS [PROPTYPE],
      x.[PROJCLAS],
      x.[PROJNAME],
      x.[DPPERCT],
      x.[HELINE],
      x.[HECURBAL],
      x.[S_DOCLVL],
      A2.Descript AS [DOCLVL],
      x.[S_LNSTATUS],
      A3.Descript AS [LNSTATUS],
      x.[HLTVH],
      x.[TSWE_INC_EXPECTED],
      x.[QUAL_TSWE_LOAN],
      x.[LNSTATUS_DT],
      x.[SCHEME_ID],
      x.[BORRCONTACTMETH],
      x.[EST_PROCESSING_DAYS],
      x.[TABLE_FUNDED_IND],
      x.[WAIT_WAIVED_BPOC],
      x.[WAIT_WAIVED_CLOSDT],
      x.[USE_RESPA_2010],
      x.[LO_NAME_OVR],
      x.[LO_NMLS_NUM_OVR],
      x.[LO_PHONE_OVR],
      x.[S_GFE_TIME_ZONE],
      A4.Descript AS [GFE_TIME_ZONE],
      x.[ALLOWWITHDRAWLOAN],
      x.[GFE_INT_RATE_LSC],
      x.[GFE_INT_RATE_LIR],
      x.[GFE_SET_CHRG_LSC],
      x.[GFE_SET_CHRG_LIR],
      x.[MAXLTV],
      x.[EMPLOYEE_LOAN_YN],
      x.[HIGH_PRICE_LOAN_YN],
      x.[MONTHLY_ESCROW_TOTAL],
      x.[REFI_LOAN_ACCT_NBR],
      x.[LO_NMLS_NUM],
      x.[LO_COMP_NMLS_NUM],
      x.[DU_DISPLAY],
      x.[LP2_RISK_CLASS],
      x.[AUTO_UW_YN],
      x.[VA_TOT_RESID_INCOME],
      x.[PER_DIEM_CALC_BASIS],
      x.[PER_DIEM],
      x.[PER_DIEM_INTEREST],
      x.[ESCROW_CUSHION_MNTH],
      x.[SPEC_FLOOD_HAZ_AREA],
      x.[NFIP_FLOOD_ZONE_ID],
      x.[SCHEME_VERSION],
      x.[HLTV_ROUNDED],
      x.[CHECKLOANSTATUS],
      x.[TOTAL_PROPOSED_HOUSING_EXP],
      x.[SELLER_OUT_MORT],
      x.[LO_EMAIL_OVR],
      x.[USE_NEW_ESCROW_CALC],
      x.[SPONSORORIG],
      x.[ACH_SELECTED],
      x.[REFERREDBY],
      x.[LO_EMPLOYER_OVR],
      x.[LO_ADDR1_OVR],
      x.[LO_CSZ_OVR],
      x.[TIL_UNDER_DISCL_AMT],
      x.[LO_COMP_NMLS_NO_OVR],
      x.[ORIGINATOR_NMLS_NO],
      x.[APP_DATE_REQUIREMENTS_MET],
      x.[IS_TEMPORARY_FINANCING_LOAN],
      x.[LO_PROPST_LICNUM_OVR],
      x.[ADJHCLTV],
      x.[PRODNAMEPARAM_EMAIL],
      x.[LP2_RISK_CLASS_OVR],
      x.[DU_DISPLAY_OVR]
   FROM [clt_NetO].[GF_TL_POINT_OF_SALE_INFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_REFSC] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TL_POINT_OF_SALE_INFO' and A0.[COLUMNNAME] = 'S_REFSC'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_PROPTYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TL_POINT_OF_SALE_INFO' and A1.[COLUMNNAME] = 'S_PROPTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_DOCLVL] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TL_POINT_OF_SALE_INFO' and A2.[COLUMNNAME] = 'S_DOCLVL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_LNSTATUS] = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TL_POINT_OF_SALE_INFO' and A3.[COLUMNNAME] = 'S_LNSTATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_GFE_TIME_ZONE] = A4.[DBSYMBOL] AND A4.[TableName] = 'GF_TL_POINT_OF_SALE_INFO' and A4.[COLUMNNAME] = 'S_GFE_TIME_ZONE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
