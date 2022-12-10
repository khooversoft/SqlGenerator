-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLR_FLOOD_DETMN]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[FLOODRESPONSEID],
      x.[FLOOD_CERT_ID],
      x.[FLOOD_CERT_DATE],
      x.[FLOOD_CERT_TRANS_IND],
      x.[FLOOD_CERT_LIFELOAN],
      x.[FLOOD_SFHA_IND],
      x.[FLOOD_PARTIAL_IND],
      x.[PROP_ADDR2],
      x.[PROP_ADDR1],
      x.[PROP_CITY],
      x.[PROP_STATE],
      x.[PROP_ZIP],
      x.[REG_AGENCY_LENDER_ID],
      x.[FLLOD_INSURANCE_AMT],
      x.[NFIP_COMMUNITY_NAME],
      x.[NFIP_COUNTY],
      x.[NFIP_STATE_CODE],
      x.[NFIP_COMMUNITY_ID],
      x.[NFIP_START_DATE],
      x.[NFIP_MAP_ID],
      x.[NFIP_MAP_PANEL_ID],
      x.[NFIP_MAP_PANEL_DATE],
      x.[NFIP_MAP_PANEL_SUFFIX],
      x.[NFIP_FLOOD_REV_TYPE],
      A0.[Descript] AS [NFIP_FLOOD_REV_TYPE_X],
      x.[NFIP_MAP_DATE],
      x.[NFIP_FLOOD_ZONE_ID],
      x.[NFIP_MAP_IND],
      x.[NFIP_STATUS_TYPE],
      A1.[Descript] AS [NFIP_STATUS_TYPE_X],
      x.[PROTECTED_AREA_IND],
      x.[PROTECTED_AREA_DATE],
      x.[SELECTED_FOR_LOAN_IND],
      x.[NFIP_COMM_FIRM_DATE],
      x.[FLOOD_CHECK_IDENTIFIER],
      x.[FLOOD_PRODUCT_CERTIFY_DATE]
   FROM [clt_NetO].[GF_TLR_FLOOD_DETMN] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[NFIP_FLOOD_REV_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_FLOOD_DETMN' and A0.[COLUMNNAME] = 'NFIP_FLOOD_REV_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[NFIP_STATUS_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_FLOOD_DETMN' and A1.[COLUMNNAME] = 'NFIP_STATUS_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
