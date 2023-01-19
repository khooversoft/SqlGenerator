-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwGF_TLR_FLOOD_DETMN]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[FLOODRESPONSEID] AS [FLOODRESPONSEID],
      x.[FLOOD_CERT_ID] AS [FLOOD_CERT_ID],
      x.[FLOOD_CERT_DATE] AS [FLOOD_CERT_DATE],
      HASHBYTES('SHA2_256', x.[FLOOD_CERT_TRANS_IND]) AS [FLOOD_CERT_TRANS_IND],
      x.[FLOOD_CERT_LIFELOAN] AS [FLOOD_CERT_LIFELOAN],
      x.[FLOOD_SFHA_IND] AS [FLOOD_SFHA_IND],
      x.[FLOOD_PARTIAL_IND] AS [FLOOD_PARTIAL_IND],
      HASHBYTES('SHA2_256', x.[PROP_ADDR2]) AS [PROP_ADDR2],
      HASHBYTES('SHA2_256', x.[PROP_ADDR1]) AS [PROP_ADDR1],
      HASHBYTES('SHA2_256', x.[PROP_CITY]) AS [PROP_CITY],
      HASHBYTES('SHA2_256', x.[PROP_STATE]) AS [PROP_STATE],
      x.[PROP_ZIP] AS [PROP_ZIP],
      x.[REG_AGENCY_LENDER_ID] AS [REG_AGENCY_LENDER_ID],
      x.[FLLOD_INSURANCE_AMT] AS [FLLOD_INSURANCE_AMT],
      HASHBYTES('SHA2_256', x.[NFIP_COMMUNITY_NAME]) AS [NFIP_COMMUNITY_NAME],
      HASHBYTES('SHA2_256', x.[NFIP_COUNTY]) AS [NFIP_COUNTY],
      x.[NFIP_STATE_CODE] AS [NFIP_STATE_CODE],
      x.[NFIP_COMMUNITY_ID] AS [NFIP_COMMUNITY_ID],
      x.[NFIP_START_DATE] AS [NFIP_START_DATE],
      HASHBYTES('SHA2_256', x.[NFIP_MAP_ID]) AS [NFIP_MAP_ID],
      x.[NFIP_MAP_PANEL_ID] AS [NFIP_MAP_PANEL_ID],
      x.[NFIP_MAP_PANEL_DATE] AS [NFIP_MAP_PANEL_DATE],
      x.[NFIP_MAP_PANEL_SUFFIX] AS [NFIP_MAP_PANEL_SUFFIX],
      x.[NFIP_FLOOD_REV_TYPE] AS [NFIP_FLOOD_REV_TYPE],
      A0.[Descript] AS [NFIP_FLOOD_REV_TYPE_X],
      x.[NFIP_MAP_DATE] AS [NFIP_MAP_DATE],
      x.[NFIP_FLOOD_ZONE_ID] AS [NFIP_FLOOD_ZONE_ID],
      HASHBYTES('SHA2_256', x.[NFIP_MAP_IND]) AS [NFIP_MAP_IND],
      x.[NFIP_STATUS_TYPE] AS [NFIP_STATUS_TYPE],
      A1.[Descript] AS [NFIP_STATUS_TYPE_X],
      x.[PROTECTED_AREA_IND] AS [PROTECTED_AREA_IND],
      x.[PROTECTED_AREA_DATE] AS [PROTECTED_AREA_DATE],
      x.[SELECTED_FOR_LOAN_IND] AS [SELECTED_FOR_LOAN_IND],
      x.[NFIP_COMM_FIRM_DATE] AS [NFIP_COMM_FIRM_DATE],
      x.[FLOOD_CHECK_IDENTIFIER] AS [FLOOD_CHECK_IDENTIFIER],
      x.[FLOOD_PRODUCT_CERTIFY_DATE] AS [FLOOD_PRODUCT_CERTIFY_DATE]
   FROM [clt_NetO].[GF_TLR_FLOOD_DETMN] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[NFIP_FLOOD_REV_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_FLOOD_DETMN' and A0.[COLUMNNAME] = 'NFIP_FLOOD_REV_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[NFIP_STATUS_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_FLOOD_DETMN' and A1.[COLUMNNAME] = 'NFIP_STATUS_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;