-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwBORROWER]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', x.[FNAME]) AS [FNAME],
      HASHBYTES('SHA2_256', x.[MNAME]) AS [MNAME],
      x.[LNAME],
      HASHBYTES('SHA2_256', x.[SSNBR]) AS [SSNBR],
      x.[AGE],
      x.[YRSSCHL],
      x.[S_MARITL],
      A0.Descript AS [MARITL],
      x.[FRNINFO],
      x.[GENDER],
      x.[NUMDEP],
      x.[DEPAGES],
      x.[ADDR1],
      x.[ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[YRSPADDR],
      x.[HPHONE],
      x.[PRIMARYB],
      x.[APPNUMB],
      x.[FIRSTBUY],
      x.[S_OWNSHP],
      A1.Descript AS [OWNSHP],
      x.[VOR_ACCT],
      x.[VOR_NAME],
      x.[OTHINCM],
      x.[COMMUNTY],
      x.[JOINTLY],
      x.[DOB],
      x.[S_BORTYP],
      A2.Descript AS [BORTYP],
      x.[ALIASES],
      x.[S_VESTNG],
      A3.Descript AS [VESTNG],
      x.[PRTENTTL],
      x.[PARTNOTE],
      x.[COUNTY],
      x.[CITYFLAG],
      x.[MARBOR],
      x.[COUNTRY],
      x.[RACEDESC],
      x.[CAIVR1],
      x.[CAIVR2],
      x.[LDPGSA1],
      x.[LDPGSA2],
      x.[POAFLAG],
      x.[ALISDBID],
      x.[ALSERNUM],
      x.[WPHONE],
      x.[EMAIL],
      x.[FAXNUM],
      HASHBYTES('SHA2_256', x.[CANADIAN_SSN]) AS [CANADIAN_SSN],
      HASHBYTES('SHA2_256', x.[NAME_SUFFIX]) AS [NAME_SUFFIX],
      x.[B_1098_IDN],
      x.[QUAL_INCOME],
      x.[BOR_TIN],
      x.[UNPARSED_NAME],
      x.[AFFIL_SHARE_IND],
      HASHBYTES('SHA2_256', x.[SSN_CERTIFICATION_IND]) AS [SSN_CERTIFICATION_IND],
      x.[PHONE_ALLOWED_IND],
      x.[EMAIL_ALLOWED_IND],
      x.[US_MAIL_ALLOWED_IND],
      x.[CARRIER_ROUTE],
      x.[OVERALL_CRED_SCORE],
      x.[OVERALL_CRED_SCORE_OVR],
      x.[CORP_SIGNATURE],
      x.[INCBASEEMPTOTAL],
      x.[INCSELFEMPTOTAL],
      x.[INCOVERTIMETOTAL],
      x.[INCBONUSTOTAL],
      x.[INCCOMMISTOTAL],
      x.[INCDIVDTOTAL],
      x.[INCNETRENTOTAL],
      x.[ATCASHDEPOSITTOTAL],
      x.[ATCHECKSAVINGSTOTAL],
      x.[ATSTOCKBONDTOTAL],
      x.[ATLIFEINSNETTOTAL],
      x.[ATOTHLIQUIDTOTAL],
      x.[ATREOTOTAL],
      x.[ATVESTEDINTTOTAL],
      x.[ATNETWORTHTOTAL],
      x.[ATAUTOMOBILE],
      x.[ATOTHNONLIQTOTAL],
      x.[INCOTHERTOTAL],
      x.[ATLIFEINSFACEAMTTOTAL],
      x.[ATASSETSTOTAL],
      x.[LTALIMONYCSSMPTOTAL],
      x.[LTJOBRELATEDEXPTOTAL],
      x.[LTLIABILITIESTOTAL],
      x.[LTMONTHLYPAYMNTTOTAL],
      x.[REOGROSSRENTINCTOTAL],
      x.[REOMORTANDLIENTOTAL],
      x.[REOMORTGAGEPAYMNTTOTAL],
      x.[REOTAXMAINTMISCTOTAL],
      x.[URLANETWORTH],
      x.[ELEC_DISC_CONSENT],
      x.[ELEC_DISC_WITHDRAW],
      x.[S_IVMETH],
      A4.Descript AS [IVMETH],
      x.[ATALLLIQUIDTOTAL],
      x.[ATGIFTTOTAL],
      x.[ATREONETPROCEEDSTOTAL],
      x.[BORROWED_DWNPMT_AMT],
      x.[LTNONSUBJDEBTMOTOTAL],
      x.[LTNONSUBJPAYOFFTOTAL],
      x.[S_CBSOURCE],
      A5.Descript AS [CBSOURCE],
      x.[VETERAN],
      x.[ENTITLEMENT],
      x.[LDP_NUMBER],
      x.[GSA_NUMBER],
      x.[FOREIGN_NATIONAL],
      x.[COUNTRY_OF_INCORP],
      x.[EIN],
      x.[NLR_NAME],
      x.[NLR_REL_DESC],
      x.[NLR_PHONE],
      x.[NLR_ADDR1],
      x.[NLR_ADDR2],
      x.[NLR_CITY],
      x.[NLR_STATE],
      x.[NLR_POSTALCODE],
      HASHBYTES('SHA2_256', x.[EXEMPTSSN]) AS [EXEMPTSSN],
      x.[FHA_CLASSIFICATION],
      x.[LDP_YN],
      x.[GSA_YN],
      x.[OVERALL_CS_SOURCE],
      x.[DISPLAY_NAME],
      x.[NON_INDIV_BORR_NAME],
      x.[S_LEGAL_ENTITY_TYPE],
      A6.Descript AS [LEGAL_ENTITY_TYPE],
      x.[S_LEGAL_ENTITY_TYP_OTH],
      A7.Descript AS [LEGAL_ENTITY_TYP_OTH],
      x.[ULDD_TAXPAYER_ID],
      x.[INCLUDE_IN_PROFORMA],
      x.[FADDR_INDICATOR],
      x.[DBA_NAME],
      x.[STATE_OF_INCORP],
      x.[INMILITARY],
      x.[BORRDISABLD],
      x.[RECORD_CREATED],
      x.[HUD_APPROVED],
      HASHBYTES('SHA2_256', x.[VERIFYSSN]) AS [VERIFYSSN],
      x.[BORR_CS_RANK_PERCENT],
      x.[YRS_AT_PRSNT],
      x.[MNTHS_AT_PRSNT],
      x.[BORR_COVERED],
      x.[S_COV_BORR_STATUS],
      A8.Descript AS [COV_BORR_STATUS],
      x.[BORR_VERBDISC],
      x.[MLACERTID],
      x.[S_BOR_UNIT_TYPE],
      A9.Descript AS [BOR_UNIT_TYPE],
      x.[BOR_UNIT_NUM],
      x.[BOR_COUNTRY],
      x.[BOR_COUNTRY_CODE],
      x.[BORR_QUAL_INC_SOURCE],
      x.[CREDIT_SCORE_MODEL],
      x.[CREDITSCORE_MODEL_OTHDESC],
      x.[BORR_FRAUD_SCORE],
      x.[FURNISH_GENDER_INFO_YN],
      x.[COLLD_BY_OBSRVTION_GENDER_YN],
      x.[COLLD_BY_OBSRVTION_RACE_YN],
      x.[COLLD_BY_OBSRVTION_ETH_YN],
      x.[SEX_MALE],
      x.[SEX_FEMALE],
      x.[COPIED_MAIL_ADDRESS],
      x.[CHECK_ALIAS],
      x.[S_PARTY_TYPE],
      A10.Descript AS [PARTY_TYPE],
      x.[S_CITIZENSHIP],
      A11.Descript AS [CITIZENSHIP],
      x.[S_UNMARRIED],
      A12.Descript AS [UNMARRIED],
      x.[ATTR_PORTAL_REG],
      x.[ATTR_COUNSELING_REQUIRED],
      x.[ATTR_CHILD_CARE],
      x.[ATTR_GUARANTOR],
      x.[ATTR_GUARDIANSHIP],
      x.[ATTR_SOLE_PROPRIETOR],
      x.[S_UNMARRIED_RLTNSHIP],
      A13.Descript AS [UNMARRIED_RLTNSHIP],
      x.[UNMARRIED_RLTNSHIP_STATE],
      x.[UNMARRIED_RLTNSHIP_OTHERDESC],
      x.[RETIRED_BORROWER],
      x.[BOR_STATE_FOREIGN],
      x.[BOR_POSTCODE],
      x.[COUNTRY_OF_INCORP_CODE],
      HASHBYTES('SHA2_256', x.[EMAIL_CONSENT]) AS [EMAIL_CONSENT],
      x.[SMS_CONSENT],
      x.[OVERALL_CS_SOURCE_OVR],
      x.[IS_DEALER_EMPLOYEE],
      x.[LIVE_RENT_FREE_ENUMS]
   FROM [clt_NetO].[BORROWER] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_MARITL = A0.[DBSYMBOL] AND A0.[TableName] = 'BORROWER' and A0.[COLUMNNAME] = 'S_MARITL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_OWNSHP = A1.[DBSYMBOL] AND A1.[TableName] = 'BORROWER' and A1.[COLUMNNAME] = 'S_OWNSHP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_BORTYP = A2.[DBSYMBOL] AND A2.[TableName] = 'BORROWER' and A2.[COLUMNNAME] = 'S_BORTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_VESTNG = A3.[DBSYMBOL] AND A3.[TableName] = 'BORROWER' and A3.[COLUMNNAME] = 'S_VESTNG'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_IVMETH = A4.[DBSYMBOL] AND A4.[TableName] = 'BORROWER' and A4.[COLUMNNAME] = 'S_IVMETH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_CBSOURCE = A5.[DBSYMBOL] AND A5.[TableName] = 'BORROWER' and A5.[COLUMNNAME] = 'S_CBSOURCE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_LEGAL_ENTITY_TYPE = A6.[DBSYMBOL] AND A6.[TableName] = 'BORROWER' and A6.[COLUMNNAME] = 'S_LEGAL_ENTITY_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_LEGAL_ENTITY_TYP_OTH = A7.[DBSYMBOL] AND A7.[TableName] = 'BORROWER' and A7.[COLUMNNAME] = 'S_LEGAL_ENTITY_TYP_OTH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.S_COV_BORR_STATUS = A8.[DBSYMBOL] AND A8.[TableName] = 'BORROWER' and A8.[COLUMNNAME] = 'S_COV_BORR_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.S_BOR_UNIT_TYPE = A9.[DBSYMBOL] AND A9.[TableName] = 'BORROWER' and A9.[COLUMNNAME] = 'S_BOR_UNIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.S_PARTY_TYPE = A10.[DBSYMBOL] AND A10.[TableName] = 'BORROWER' and A10.[COLUMNNAME] = 'S_PARTY_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A11 on x.S_CITIZENSHIP = A11.[DBSYMBOL] AND A11.[TableName] = 'BORROWER' and A11.[COLUMNNAME] = 'S_CITIZENSHIP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A12 on x.S_UNMARRIED = A12.[DBSYMBOL] AND A12.[TableName] = 'BORROWER' and A12.[COLUMNNAME] = 'S_UNMARRIED'
      LEFT JOIN [clt_NetO].[SymbolLookup] A13 on x.S_UNMARRIED_RLTNSHIP = A13.[DBSYMBOL] AND A13.[TableName] = 'BORROWER' and A13.[COLUMNNAME] = 'S_UNMARRIED_RLTNSHIP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
