-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TS_CMS_CONTACT_INFO]
AS
   SELECT
      x.[CID],
      x.[ACTIVE],
      x.[S_CMSSTATUS],
      x.[FULLNAME],
      x.[SHORTNAME],
      x.[SSNTIN],
      x.[S_TITLE],
      x.[REFCODE],
      x.[CREATED_BY_USER],
      x.[CREATED_DATE],
      x.[LAST_UPDATE_USER],
      x.[LAST_UPDATED],
      x.[SPANISH_SPEAKING],
      x.[DOB],
      x.[E_SIGNATURE_GUID],
      x.[FIRSTNAME],
      x.[MIDDLENAME],
      x.[LASTNAME],
      x.[SUFFIXNAME],
      x.[PORTAL_REFCODE]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_INFO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
