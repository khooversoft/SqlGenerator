-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwSELLER]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[SELCNTR],
      HASHBYTES('SHA2_256', x.[FNAME]) AS [FNAME],
      HASHBYTES('SHA2_256', x.[MNAME]) AS [MNAME],
      HASHBYTES('SHA2_256', x.[LNAME]) AS [LNAME],
      HASHBYTES('SHA2_256', x.[ADDR1]) AS [ADDR1],
      HASHBYTES('SHA2_256', x.[ADDR2]) AS [ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      HASHBYTES('SHA2_256', x.[STATE]) AS [STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      HASHBYTES('SHA2_256', x.[PHONE]) AS [PHONE],
      HASHBYTES('SHA2_256', x.[SSNTIN]) AS [SSNTIN],
      x.[PCTGP],
      HASHBYTES('SHA2_256', CAST(x.[TAXCREDT] AS NVARCHAR(50))) AS [TAXCREDT],
      HASHBYTES('SHA2_256', x.[NAME_SUFFIX]) AS [NAME_SUFFIX],
      x.[UNPARSED_NAME],
      HASHBYTES('SHA2_256', x.[NONPERSON_IND]) AS [NONPERSON_IND],
      HASHBYTES('SHA2_256', x.[CNTY]) AS [CNTY],
      x.[LDP_NUMBER],
      HASHBYTES('SHA2_256', x.[GSA_NUMBER]) AS [GSA_NUMBER],
      HASHBYTES('SHA2_256', x.[SELLER_WORK_PH]) AS [SELLER_WORK_PH],
      x.[CONSIDERATION_INCL_SRVCS],
      HASHBYTES('SHA2_256', CAST(x.[ACH_CID_BANK] AS NVARCHAR(50))) AS [ACH_CID_BANK],
      x.[ACH_ACCOUNT_TYPE],
      HASHBYTES('SHA2_256', x.[ACH_ACCOUNT_NUMBER]) AS [ACH_ACCOUNT_NUMBER],
      x.[AMOUNT_PROCEEDS],
      x.[AMOUNT_PROCEEDS_OVRD],
      x.[ACH_BANK_ADDR_CNTR],
      HASHBYTES('SHA2_256', CAST(x.[SELLER_ADDRESS_CNTR] AS NVARCHAR(50))) AS [SELLER_ADDRESS_CNTR],
      x.[ACH_BANK_ADDR_ROWSERNO],
      HASHBYTES('SHA2_256', x.[COUNTRY]) AS [COUNTRY],
      HASHBYTES('SHA2_256', x.[POWER_OF_ATT]) AS [POWER_OF_ATT],
      HASHBYTES('SHA2_256', x.[POWER_OF_ATT_DESC]) AS [POWER_OF_ATT_DESC],
      x.[ESTABLISHED_STATE],
      x.[S_BOR_SELLER_OPTION],
      A0.[Descript] AS [S_BOR_SELLER_OPTION_X],
      x.[S_SEL_UNIT_TYPE],
      A1.[Descript] AS [S_SEL_UNIT_TYPE_X],
      x.[SEL_UNIT_NUM],
      HASHBYTES('SHA2_256', x.[SEL_COUNTRY_CODE]) AS [SEL_COUNTRY_CODE],
      x.[SEL_STATE_FOREIN],
      HASHBYTES('SHA2_256', x.[SEL_POSTCODE]) AS [SEL_POSTCODE],
      HASHBYTES('SHA2_256', x.[EMAIL]) AS [EMAIL],
      x.[S_IDENTIFICATION_TYPE],
      A2.[Descript] AS [S_IDENTIFICATION_TYPE_X],
      HASHBYTES('SHA2_256', x.[IDENTIFICATION_NUMBER]) AS [IDENTIFICATION_NUMBER],
      HASHBYTES('SHA2_256', x.[SELLER_LIENHOLDER]) AS [SELLER_LIENHOLDER],
      x.[SELLER_CODE],
      x.[SALES_TAX_ID],
      HASHBYTES('SHA2_256', x.[REGION]) AS [REGION]
   FROM [clt_NetO].[SELLER] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_BOR_SELLER_OPTION] = A0.[DBSYMBOL] AND A0.[TableName] = 'SELLER' and A0.[COLUMNNAME] = 'S_BOR_SELLER_OPTION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_SEL_UNIT_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'SELLER' and A1.[COLUMNNAME] = 'S_SEL_UNIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_IDENTIFICATION_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'SELLER' and A2.[COLUMNNAME] = 'S_IDENTIFICATION_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
