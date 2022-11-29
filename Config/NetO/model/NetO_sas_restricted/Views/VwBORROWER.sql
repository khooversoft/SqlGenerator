-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwBORROWER]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      HASHBYTES('SHA2_256', x.[FNAME]) AS [FNAME],
      HASHBYTES('SHA2_256', x.[MNAME]) AS [MNAME],
      x.[LNAME] AS [LNAME],
      HASHBYTES('SHA2_256', x.[SSNBR]) AS [SSNBR],
      x.[AGE] AS [AGE],
      x.[YRSSCHL] AS [YRSSCHL],
      x.[S_MARITL] AS [S_MARITL],
      A0.Descript AS [MARITL],
      x.[FRNINFO] AS [FRNINFO],
      x.[GENDER] AS [GENDER],
      x.[NUMDEP] AS [NUMDEP],
      x.[DEPAGES] AS [DEPAGES],
      x.[ADDR1] AS [ADDR1],
      x.[ADDR2] AS [ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE] AS [STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[YRSPADDR] AS [YRSPADDR],
      x.[HPHONE] AS [HPHONE],
      x.[PRIMARYB] AS [PRIMARYB],
      x.[APPNUMB] AS [APPNUMB],
      x.[FIRSTBUY] AS [FIRSTBUY],
      x.[S_OWNSHP] AS [S_OWNSHP],
      A1.Descript AS [OWNSHP],
      x.[VOR_ACCT] AS [VOR_ACCT],
      x.[VOR_NAME] AS [VOR_NAME],
      x.[OTHINCM] AS [OTHINCM],
      x.[COMMUNTY] AS [COMMUNTY],
      x.[JOINTLY] AS [JOINTLY],
      x.[DOB] AS [DOB],
      x.[S_BORTYP] AS [S_BORTYP],
      A2.Descript AS [BORTYP],
      x.[ALIASES] AS [ALIASES],
      x.[S_VESTNG] AS [S_VESTNG],
      A3.Descript AS [VESTNG],
      x.[PRTENTTL] AS [PRTENTTL],
      x.[PARTNOTE] AS [PARTNOTE],
      x.[COUNTY] AS [COUNTY],
      x.[CITYFLAG] AS [CITYFLAG],
      x.[MARBOR] AS [MARBOR],
      x.[COUNTRY] AS [COUNTRY],
      x.[RACEDESC] AS [RACEDESC],
      x.[CAIVR1] AS [CAIVR1],
      x.[CAIVR2] AS [CAIVR2],
      x.[LDPGSA1] AS [LDPGSA1],
      x.[LDPGSA2] AS [LDPGSA2],
      x.[POAFLAG] AS [POAFLAG],
      x.[ALISDBID] AS [ALISDBID],
      x.[ALSERNUM] AS [ALSERNUM],
      x.[WPHONE] AS [WPHONE],
      x.[EMAIL] AS [EMAIL],
      x.[FAXNUM] AS [FAXNUM],
      HASHBYTES('SHA2_256', x.[CANADIAN_SSN]) AS [CANADIAN_SSN],
      HASHBYTES('SHA2_256', x.[NAME_SUFFIX]) AS [NAME_SUFFIX],
      x.[B_1098_IDN] AS [B_1098_IDN],
      x.[QUAL_INCOME] AS [QUAL_INCOME],
      x.[BOR_TIN] AS [BOR_TIN],
      x.[UNPARSED_NAME] AS [UNPARSED_NAME],
      x.[AFFIL_SHARE_IND] AS [AFFIL_SHARE_IND],
      HASHBYTES('SHA2_256', x.[SSN_CERTIFICATION_IND]) AS [SSN_CERTIFICATION_IND],
      x.[PHONE_ALLOWED_IND] AS [PHONE_ALLOWED_IND],
      x.[EMAIL_ALLOWED_IND] AS [EMAIL_ALLOWED_IND],
      x.[US_MAIL_ALLOWED_IND] AS [US_MAIL_ALLOWED_IND],
      x.[CARRIER_ROUTE] AS [CARRIER_ROUTE],
      x.[OVERALL_CRED_SCORE] AS [OVERALL_CRED_SCORE],
      x.[OVERALL_CRED_SCORE_OVR] AS [OVERALL_CRED_SCORE_OVR],
      x.[CORP_SIGNATURE] AS [CORP_SIGNATURE],
      x.[INCBASEEMPTOTAL] AS [INCBASEEMPTOTAL],
      x.[INCSELFEMPTOTAL] AS [INCSELFEMPTOTAL],
      x.[INCOVERTIMETOTAL] AS [INCOVERTIMETOTAL],
      x.[INCBONUSTOTAL] AS [INCBONUSTOTAL],
      x.[INCCOMMISTOTAL] AS [INCCOMMISTOTAL],
      x.[INCDIVDTOTAL] AS [INCDIVDTOTAL],
      x.[INCNETRENTOTAL] AS [INCNETRENTOTAL],
      x.[ATCASHDEPOSITTOTAL] AS [ATCASHDEPOSITTOTAL],
      x.[ATCHECKSAVINGSTOTAL] AS [ATCHECKSAVINGSTOTAL],
      x.[ATSTOCKBONDTOTAL] AS [ATSTOCKBONDTOTAL],
      x.[ATLIFEINSNETTOTAL] AS [ATLIFEINSNETTOTAL],
      x.[ATOTHLIQUIDTOTAL] AS [ATOTHLIQUIDTOTAL],
      x.[ATREOTOTAL] AS [ATREOTOTAL],
      x.[ATVESTEDINTTOTAL] AS [ATVESTEDINTTOTAL],
      x.[ATNETWORTHTOTAL] AS [ATNETWORTHTOTAL],
      x.[ATAUTOMOBILE] AS [ATAUTOMOBILE],
      x.[ATOTHNONLIQTOTAL] AS [ATOTHNONLIQTOTAL],
      x.[INCOTHERTOTAL] AS [INCOTHERTOTAL],
      x.[ATLIFEINSFACEAMTTOTAL] AS [ATLIFEINSFACEAMTTOTAL],
      x.[ATASSETSTOTAL] AS [ATASSETSTOTAL],
      x.[LTALIMONYCSSMPTOTAL] AS [LTALIMONYCSSMPTOTAL],
      x.[LTJOBRELATEDEXPTOTAL] AS [LTJOBRELATEDEXPTOTAL],
      x.[LTLIABILITIESTOTAL] AS [LTLIABILITIESTOTAL],
      x.[LTMONTHLYPAYMNTTOTAL] AS [LTMONTHLYPAYMNTTOTAL],
      x.[REOGROSSRENTINCTOTAL] AS [REOGROSSRENTINCTOTAL],
      x.[REOMORTANDLIENTOTAL] AS [REOMORTANDLIENTOTAL],
      x.[REOMORTGAGEPAYMNTTOTAL] AS [REOMORTGAGEPAYMNTTOTAL],
      x.[REOTAXMAINTMISCTOTAL] AS [REOTAXMAINTMISCTOTAL],
      x.[URLANETWORTH] AS [URLANETWORTH],
      x.[ELEC_DISC_CONSENT] AS [ELEC_DISC_CONSENT],
      x.[ELEC_DISC_WITHDRAW] AS [ELEC_DISC_WITHDRAW],
      x.[S_IVMETH] AS [S_IVMETH],
      A4.Descript AS [IVMETH],
      x.[ATALLLIQUIDTOTAL] AS [ATALLLIQUIDTOTAL],
      x.[ATGIFTTOTAL] AS [ATGIFTTOTAL],
      x.[ATREONETPROCEEDSTOTAL] AS [ATREONETPROCEEDSTOTAL],
      x.[BORROWED_DWNPMT_AMT] AS [BORROWED_DWNPMT_AMT],
      x.[LTNONSUBJDEBTMOTOTAL] AS [LTNONSUBJDEBTMOTOTAL],
      x.[LTNONSUBJPAYOFFTOTAL] AS [LTNONSUBJPAYOFFTOTAL],
      x.[S_CBSOURCE] AS [S_CBSOURCE],
      A5.Descript AS [CBSOURCE],
      x.[VETERAN] AS [VETERAN],
      x.[ENTITLEMENT] AS [ENTITLEMENT],
      x.[LDP_NUMBER] AS [LDP_NUMBER],
      x.[GSA_NUMBER] AS [GSA_NUMBER],
      x.[FOREIGN_NATIONAL] AS [FOREIGN_NATIONAL],
      x.[COUNTRY_OF_INCORP] AS [COUNTRY_OF_INCORP],
      x.[EIN] AS [EIN],
      x.[NLR_NAME] AS [NLR_NAME],
      x.[NLR_REL_DESC] AS [NLR_REL_DESC],
      x.[NLR_PHONE] AS [NLR_PHONE],
      x.[NLR_ADDR1] AS [NLR_ADDR1],
      x.[NLR_ADDR2] AS [NLR_ADDR2],
      x.[NLR_CITY] AS [NLR_CITY],
      x.[NLR_STATE] AS [NLR_STATE],
      x.[NLR_POSTALCODE] AS [NLR_POSTALCODE],
      HASHBYTES('SHA2_256', x.[EXEMPTSSN]) AS [EXEMPTSSN],
      x.[FHA_CLASSIFICATION] AS [FHA_CLASSIFICATION],
      x.[LDP_YN] AS [LDP_YN],
      x.[GSA_YN] AS [GSA_YN],
      x.[OVERALL_CS_SOURCE] AS [OVERALL_CS_SOURCE],
      x.[DISPLAY_NAME] AS [DISPLAY_NAME],
      x.[NON_INDIV_BORR_NAME] AS [NON_INDIV_BORR_NAME],
      x.[S_LEGAL_ENTITY_TYPE] AS [S_LEGAL_ENTITY_TYPE],
      A6.Descript AS [LEGAL_ENTITY_TYPE],
      x.[S_LEGAL_ENTITY_TYP_OTH] AS [S_LEGAL_ENTITY_TYP_OTH],
      A7.Descript AS [LEGAL_ENTITY_TYP_OTH],
      x.[ULDD_TAXPAYER_ID] AS [ULDD_TAXPAYER_ID],
      x.[INCLUDE_IN_PROFORMA] AS [INCLUDE_IN_PROFORMA],
      x.[FADDR_INDICATOR] AS [FADDR_INDICATOR],
      x.[DBA_NAME] AS [DBA_NAME],
      x.[STATE_OF_INCORP] AS [STATE_OF_INCORP],
      x.[INMILITARY] AS [INMILITARY],
      x.[BORRDISABLD] AS [BORRDISABLD],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[HUD_APPROVED] AS [HUD_APPROVED],
      HASHBYTES('SHA2_256', x.[VERIFYSSN]) AS [VERIFYSSN],
      x.[BORR_CS_RANK_PERCENT] AS [BORR_CS_RANK_PERCENT],
      x.[YRS_AT_PRSNT] AS [YRS_AT_PRSNT],
      x.[MNTHS_AT_PRSNT] AS [MNTHS_AT_PRSNT],
      x.[BORR_COVERED] AS [BORR_COVERED],
      x.[S_COV_BORR_STATUS] AS [S_COV_BORR_STATUS],
      A8.Descript AS [COV_BORR_STATUS],
      x.[BORR_VERBDISC] AS [BORR_VERBDISC],
      x.[MLACERTID] AS [MLACERTID],
      x.[S_BOR_UNIT_TYPE] AS [S_BOR_UNIT_TYPE],
      A9.Descript AS [BOR_UNIT_TYPE],
      x.[BOR_UNIT_NUM] AS [BOR_UNIT_NUM],
      x.[BOR_COUNTRY] AS [BOR_COUNTRY],
      x.[BOR_COUNTRY_CODE] AS [BOR_COUNTRY_CODE],
      x.[BORR_QUAL_INC_SOURCE] AS [BORR_QUAL_INC_SOURCE],
      x.[CREDIT_SCORE_MODEL] AS [CREDIT_SCORE_MODEL],
      x.[CREDITSCORE_MODEL_OTHDESC] AS [CREDITSCORE_MODEL_OTHDESC],
      x.[BORR_FRAUD_SCORE] AS [BORR_FRAUD_SCORE],
      x.[FURNISH_GENDER_INFO_YN] AS [FURNISH_GENDER_INFO_YN],
      x.[COLLD_BY_OBSRVTION_GENDER_YN] AS [COLLD_BY_OBSRVTION_GENDER_YN],
      x.[COLLD_BY_OBSRVTION_RACE_YN] AS [COLLD_BY_OBSRVTION_RACE_YN],
      x.[COLLD_BY_OBSRVTION_ETH_YN] AS [COLLD_BY_OBSRVTION_ETH_YN],
      x.[SEX_MALE] AS [SEX_MALE],
      x.[SEX_FEMALE] AS [SEX_FEMALE],
      x.[COPIED_MAIL_ADDRESS] AS [COPIED_MAIL_ADDRESS],
      x.[CHECK_ALIAS] AS [CHECK_ALIAS],
      x.[S_PARTY_TYPE] AS [S_PARTY_TYPE],
      A10.Descript AS [PARTY_TYPE],
      x.[S_CITIZENSHIP] AS [S_CITIZENSHIP],
      A11.Descript AS [CITIZENSHIP],
      x.[S_UNMARRIED] AS [S_UNMARRIED],
      A12.Descript AS [UNMARRIED],
      x.[ATTR_PORTAL_REG] AS [ATTR_PORTAL_REG],
      x.[ATTR_COUNSELING_REQUIRED] AS [ATTR_COUNSELING_REQUIRED],
      x.[ATTR_CHILD_CARE] AS [ATTR_CHILD_CARE],
      x.[ATTR_GUARANTOR] AS [ATTR_GUARANTOR],
      x.[ATTR_GUARDIANSHIP] AS [ATTR_GUARDIANSHIP],
      x.[ATTR_SOLE_PROPRIETOR] AS [ATTR_SOLE_PROPRIETOR],
      x.[S_UNMARRIED_RLTNSHIP] AS [S_UNMARRIED_RLTNSHIP],
      A13.Descript AS [UNMARRIED_RLTNSHIP],
      x.[UNMARRIED_RLTNSHIP_STATE] AS [UNMARRIED_RLTNSHIP_STATE],
      x.[UNMARRIED_RLTNSHIP_OTHERDESC] AS [UNMARRIED_RLTNSHIP_OTHERDESC],
      x.[RETIRED_BORROWER] AS [RETIRED_BORROWER],
      x.[BOR_STATE_FOREIGN] AS [BOR_STATE_FOREIGN],
      x.[BOR_POSTCODE] AS [BOR_POSTCODE],
      x.[COUNTRY_OF_INCORP_CODE] AS [COUNTRY_OF_INCORP_CODE],
      HASHBYTES('SHA2_256', x.[EMAIL_CONSENT]) AS [EMAIL_CONSENT],
      x.[SMS_CONSENT] AS [SMS_CONSENT],
      x.[OVERALL_CS_SOURCE_OVR] AS [OVERALL_CS_SOURCE_OVR],
      x.[IS_DEALER_EMPLOYEE] AS [IS_DEALER_EMPLOYEE],
      x.[LIVE_RENT_FREE_ENUMS] AS [LIVE_RENT_FREE_ENUMS]
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
