-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwSELLER]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[SELCNTR] AS [SELCNTR],
      HASHBYTES('SHA2_256', x.[FNAME]) AS [FNAME],
      HASHBYTES('SHA2_256', x.[MNAME]) AS [MNAME],
      x.[LNAME] AS [LNAME],
      x.[ADDR1] AS [ADDR1],
      x.[ADDR2] AS [ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE] AS [STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[PHONE] AS [PHONE],
      HASHBYTES('SHA2_256', x.[SSNTIN]) AS [SSNTIN],
      x.[PCTGP] AS [PCTGP],
      x.[TAXCREDT] AS [TAXCREDT],
      HASHBYTES('SHA2_256', x.[NAME_SUFFIX]) AS [NAME_SUFFIX],
      x.[UNPARSED_NAME] AS [UNPARSED_NAME],
      x.[NONPERSON_IND] AS [NONPERSON_IND],
      x.[CNTY] AS [CNTY],
      x.[LDP_NUMBER] AS [LDP_NUMBER],
      x.[GSA_NUMBER] AS [GSA_NUMBER],
      x.[SELLER_WORK_PH] AS [SELLER_WORK_PH],
      x.[CONSIDERATION_INCL_SRVCS] AS [CONSIDERATION_INCL_SRVCS],
      x.[ACH_CID_BANK] AS [ACH_CID_BANK],
      x.[ACH_ACCOUNT_TYPE] AS [ACH_ACCOUNT_TYPE],
      x.[ACH_ACCOUNT_NUMBER] AS [ACH_ACCOUNT_NUMBER],
      x.[AMOUNT_PROCEEDS] AS [AMOUNT_PROCEEDS],
      x.[AMOUNT_PROCEEDS_OVRD] AS [AMOUNT_PROCEEDS_OVRD],
      x.[ACH_BANK_ADDR_CNTR] AS [ACH_BANK_ADDR_CNTR],
      x.[SELLER_ADDRESS_CNTR] AS [SELLER_ADDRESS_CNTR],
      x.[ACH_BANK_ADDR_ROWSERNO] AS [ACH_BANK_ADDR_ROWSERNO],
      x.[COUNTRY] AS [COUNTRY],
      x.[POWER_OF_ATT] AS [POWER_OF_ATT],
      x.[POWER_OF_ATT_DESC] AS [POWER_OF_ATT_DESC],
      x.[ESTABLISHED_STATE] AS [ESTABLISHED_STATE],
      x.[S_BOR_SELLER_OPTION] AS [S_BOR_SELLER_OPTION],
      A0.[Descript] AS [S_BOR_SELLER_OPTION_X],
      x.[S_SEL_UNIT_TYPE] AS [S_SEL_UNIT_TYPE],
      A1.[Descript] AS [S_SEL_UNIT_TYPE_X],
      x.[SEL_UNIT_NUM] AS [SEL_UNIT_NUM],
      x.[SEL_COUNTRY_CODE] AS [SEL_COUNTRY_CODE],
      x.[SEL_STATE_FOREIN] AS [SEL_STATE_FOREIN],
      x.[SEL_POSTCODE] AS [SEL_POSTCODE],
      x.[EMAIL] AS [EMAIL],
      x.[S_IDENTIFICATION_TYPE] AS [S_IDENTIFICATION_TYPE],
      A2.[Descript] AS [S_IDENTIFICATION_TYPE_X],
      x.[IDENTIFICATION_NUMBER] AS [IDENTIFICATION_NUMBER],
      x.[SELLER_LIENHOLDER] AS [SELLER_LIENHOLDER],
      x.[SELLER_CODE] AS [SELLER_CODE],
      x.[SALES_TAX_ID] AS [SALES_TAX_ID],
      x.[REGION] AS [REGION]
   FROM [clt_NetO].[SELLER] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_BOR_SELLER_OPTION] = A0.[DBSYMBOL] AND A0.[TableName] = 'SELLER' and A0.[COLUMNNAME] = 'S_BOR_SELLER_OPTION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_SEL_UNIT_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'SELLER' and A1.[COLUMNNAME] = 'S_SEL_UNIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_IDENTIFICATION_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'SELLER' and A2.[COLUMNNAME] = 'S_IDENTIFICATION_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
