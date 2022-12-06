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
      x.[LNAME],
      x.[ADDR1],
      x.[ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[PHONE],
      HASHBYTES('SHA2_256', x.[SSNTIN]) AS [SSNTIN],
      x.[PCTGP],
      x.[TAXCREDT],
      HASHBYTES('SHA2_256', x.[NAME_SUFFIX]) AS [NAME_SUFFIX],
      x.[UNPARSED_NAME],
      x.[NONPERSON_IND],
      x.[CNTY],
      x.[LDP_NUMBER],
      x.[GSA_NUMBER],
      x.[SELLER_WORK_PH],
      x.[CONSIDERATION_INCL_SRVCS],
      x.[ACH_CID_BANK],
      x.[ACH_ACCOUNT_TYPE],
      x.[ACH_ACCOUNT_NUMBER],
      x.[AMOUNT_PROCEEDS],
      x.[AMOUNT_PROCEEDS_OVRD],
      x.[ACH_BANK_ADDR_CNTR],
      x.[SELLER_ADDRESS_CNTR],
      x.[ACH_BANK_ADDR_ROWSERNO],
      x.[COUNTRY],
      x.[POWER_OF_ATT],
      x.[POWER_OF_ATT_DESC],
      x.[ESTABLISHED_STATE],
      x.[S_BOR_SELLER_OPTION],
      A0.Descript AS [BOR_SELLER_OPTION],
      x.[S_SEL_UNIT_TYPE],
      A1.Descript AS [SEL_UNIT_TYPE],
      x.[SEL_UNIT_NUM],
      x.[SEL_COUNTRY_CODE],
      x.[SEL_STATE_FOREIN],
      x.[SEL_POSTCODE],
      x.[EMAIL],
      x.[S_IDENTIFICATION_TYPE],
      A2.Descript AS [IDENTIFICATION_TYPE],
      x.[IDENTIFICATION_NUMBER],
      x.[SELLER_LIENHOLDER],
      x.[SELLER_CODE],
      x.[SALES_TAX_ID],
      x.[REGION]
   FROM [clt_NetO].[SELLER] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_BOR_SELLER_OPTION = A0.[DBSYMBOL] AND A0.[TableName] = 'SELLER' and A0.[COLUMNNAME] = 'S_BOR_SELLER_OPTION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_SEL_UNIT_TYPE = A1.[DBSYMBOL] AND A1.[TableName] = 'SELLER' and A1.[COLUMNNAME] = 'S_SEL_UNIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_IDENTIFICATION_TYPE = A2.[DBSYMBOL] AND A2.[TableName] = 'SELLER' and A2.[COLUMNNAME] = 'S_IDENTIFICATION_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
