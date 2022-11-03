-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TS_CMS_CONTACT_TYPE]
AS
   SELECT
      x.[CID] AS [CID],
      x.[S_CMSTYPE] AS [S_CMSTYPE]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_TYPE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
