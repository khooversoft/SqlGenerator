-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TS_CMS_CONTACT_INFO]
AS
   SELECT
      x.[CID] AS [CID],
      x.[ACTIVE] AS [ACTIVE],
      x.[S_CMSSTATUS] AS [S_CMSSTATUS],
      x.[FULLNAME] AS [FULLNAME],
      x.[SHORTNAME] AS [SHORTNAME],
      HASHBYTES('SHA2_256', x.[SSNTIN]) AS [SSNTIN],
      x.[S_TITLE] AS [S_TITLE],
      x.[REFCODE] AS [REFCODE],
      x.[CREATED_BY_USER] AS [CREATED_BY_USER],
      x.[CREATED_DATE] AS [CREATED_DATE],
      x.[LAST_UPDATE_USER] AS [LAST_UPDATE_USER],
      x.[LAST_UPDATED] AS [LAST_UPDATED],
      x.[SPANISH_SPEAKING] AS [SPANISH_SPEAKING],
      x.[DOB] AS [DOB],
      x.[E_SIGNATURE_GUID] AS [E_SIGNATURE_GUID],
      HASHBYTES('SHA2_256', x.[FIRSTNAME]) AS [FIRSTNAME],
      HASHBYTES('SHA2_256', x.[MIDDLENAME]) AS [MIDDLENAME],
      HASHBYTES('SHA2_256', x.[LASTNAME]) AS [LASTNAME],
      x.[SUFFIXNAME] AS [SUFFIXNAME],
      x.[PORTAL_REFCODE] AS [PORTAL_REFCODE]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_INFO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
