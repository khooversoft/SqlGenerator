-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TS_CMS_CONTACT_INFO]
AS
   SELECT
      x.[CID],
      x.[ACTIVE],
      x.[S_CMSSTATUS],
      x.[FULLNAME],
      x.[SHORTNAME],
      HASHBYTES('SHA2_256', x.[SSNTIN]) AS [SSNTIN],
      x.[S_TITLE],
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
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
