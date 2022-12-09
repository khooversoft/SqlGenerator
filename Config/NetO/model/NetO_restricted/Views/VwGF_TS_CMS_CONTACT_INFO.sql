-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TS_CMS_CONTACT_INFO]
AS
   SELECT
      x.[CID],
      x.[ACTIVE],
      x.[S_CMSSTATUS],
      A0.Descript AS [CMSSTATUS],
      x.[FULLNAME],
      x.[SHORTNAME],
      HASHBYTES('SHA2_256', x.[SSNTIN]) AS [SSNTIN],
      x.[S_TITLE],
      A1.Descript AS [TITLE],
      x.[REFCODE],
      x.[CREATED_BY_USER],
      x.[CREATED_DATE],
      x.[LAST_UPDATE_USER],
      x.[LAST_UPDATED],
      x.[SPANISH_SPEAKING],
      x.[DOB],
      x.[E_SIGNATURE_GUID],
      HASHBYTES('SHA2_256', x.[FIRSTNAME]) AS [FIRSTNAME],
      HASHBYTES('SHA2_256', x.[MIDDLENAME]) AS [MIDDLENAME],
      HASHBYTES('SHA2_256', x.[LASTNAME]) AS [LASTNAME],
      x.[SUFFIXNAME],
      x.[PORTAL_REFCODE]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_INFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_CMSSTATUS] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_CMS_CONTACT_INFO' and A0.[COLUMNNAME] = 'S_CMSSTATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_TITLE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TS_CMS_CONTACT_INFO' and A1.[COLUMNNAME] = 'S_TITLE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
