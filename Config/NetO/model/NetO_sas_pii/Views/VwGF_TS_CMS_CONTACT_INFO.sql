-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TS_CMS_CONTACT_INFO]
AS
   SELECT
      x.[CID] AS [CID],
      x.[ACTIVE] AS [ACTIVE],
      x.[S_CMSSTATUS] AS [S_CMSSTATUS],
      A0.[Descript] AS [S_CMSSTATUS_X],
      x.[FULLNAME] AS [FULLNAME],
      x.[SHORTNAME] AS [SHORTNAME],
      x.[SSNTIN] AS [SSNTIN],
      x.[S_TITLE] AS [S_TITLE],
      A1.[Descript] AS [S_TITLE_X],
      x.[REFCODE] AS [REFCODE],
      x.[CREATED_BY_USER] AS [CREATED_BY_USER],
      x.[CREATED_DATE] AS [CREATED_DATE],
      x.[LAST_UPDATE_USER] AS [LAST_UPDATE_USER],
      x.[LAST_UPDATED] AS [LAST_UPDATED],
      x.[SPANISH_SPEAKING] AS [SPANISH_SPEAKING],
      x.[DOB] AS [DOB],
      x.[E_SIGNATURE_GUID] AS [E_SIGNATURE_GUID],
      x.[FIRSTNAME] AS [FIRSTNAME],
      x.[MIDDLENAME] AS [MIDDLENAME],
      x.[LASTNAME] AS [LASTNAME],
      x.[SUFFIXNAME] AS [SUFFIXNAME],
      x.[PORTAL_REFCODE] AS [PORTAL_REFCODE]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_INFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_CMSSTATUS] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_CMS_CONTACT_INFO' and A0.[COLUMNNAME] = 'S_CMSSTATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_TITLE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TS_CMS_CONTACT_INFO' and A1.[COLUMNNAME] = 'S_TITLE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
