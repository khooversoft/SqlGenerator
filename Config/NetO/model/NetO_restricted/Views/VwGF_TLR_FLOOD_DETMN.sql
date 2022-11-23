-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_FLOOD_DETMN]
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
      x.[NFIP_MAP_DATE],
      x.[NFIP_FLOOD_ZONE_ID],
      x.[NFIP_MAP_IND],
      x.[NFIP_STATUS_TYPE],
      x.[PROTECTED_AREA_IND],
      x.[PROTECTED_AREA_DATE],
      x.[SELECTED_FOR_LOAN_IND],
      x.[NFIP_COMM_FIRM_DATE],
      x.[FLOOD_CHECK_IDENTIFIER],
      x.[FLOOD_PRODUCT_CERTIFY_DATE]
   FROM [clt_NetO].[GF_TLR_FLOOD_DETMN] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
