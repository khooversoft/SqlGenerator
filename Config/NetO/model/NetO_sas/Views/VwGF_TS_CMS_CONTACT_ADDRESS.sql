-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TS_CMS_CONTACT_ADDRESS]
AS
   SELECT
      x.[CID] AS [CID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[S_ADDRTYPE] AS [S_ADDRTYPE],
      A0.Descript AS [S_ADDRTYPE_Description],
      x.[ADDR1] AS [ADDR1],
      x.[ADDR2] AS [ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[COUNTY] AS [COUNTY],
      x.[STATE] AS [STATE],
      x.[COUNTRY] AS [COUNTRY],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[TIMEZONE] AS [TIMEZONE],
      x.[S_CMSADR_UNIT_TYPE] AS [S_CMSADR_UNIT_TYPE],
      A1.Descript AS [S_CMSADR_UNIT_TYPE_Description],
      x.[CMSADR_UNIT_NUM] AS [CMSADR_UNIT_NUM]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_ADDRESS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_ADDRTYPE = A0.DBSYMBOL AND A0.[TableName] = 'GF_TS_CMS_CONTACT_ADDRESS' and A0.[COLUMNNAME] = 'S_ADDRTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_CMSADR_UNIT_TYPE = A1.DBSYMBOL AND A1.[TableName] = 'GF_TS_CMS_CONTACT_ADDRESS' and A1.[COLUMNNAME] = 'S_CMSADR_UNIT_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
