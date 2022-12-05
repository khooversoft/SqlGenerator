-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_CMS_INFOBYTYPE]
AS
   SELECT
      x.[CID],
      x.[S_CMSTYPE],
      A0.Descript AS [D_CMSTYPE],
      x.[S_STATUS],
      A1.Descript AS [D_STATUS],
      x.[STATUS_START_DT],
      x.[STATUS_STOP_DT],
      x.[STATUS_CHGD_DT],
      x.[USEPARENT],
      x.[S_GRADE],
      A2.Descript AS [D_GRADE],
      x.[COMPLIANCE_MONITOR],
      x.[COMPLIANCE_EMAIL],
      x.[EMPLOYER_ID],
      x.[LAST_UPDATED_USER],
      x.[LAST_UPDATED],
      x.[CHUMS_ID],
      x.[HUD_APPROVED],
      x.[RECEIVE_RATE_ALERTS],
      x.[SAR_ID],
      x.[PROVIDER_ID],
      x.[S_TYPE_OF_COMPANY],
      A3.Descript AS [D_TYPE_OF_COMPANY],
      x.[CMS_SHORT_DESC],
      x.[CMS_COMMENTS]
   FROM [clt_NetO].[GF_TS_CMS_INFOBYTYPE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_CMSTYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_CMS_INFOBYTYPE' and A0.[COLUMNNAME] = 'S_CMSTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_STATUS = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TS_CMS_INFOBYTYPE' and A1.[COLUMNNAME] = 'S_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_GRADE = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TS_CMS_INFOBYTYPE' and A2.[COLUMNNAME] = 'S_GRADE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_TYPE_OF_COMPANY = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TS_CMS_INFOBYTYPE' and A3.[COLUMNNAME] = 'S_TYPE_OF_COMPANY'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
