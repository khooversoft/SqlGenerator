-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TS_CMS_CONTACT_PHONE]
AS
   SELECT
      x.[CID] AS [CID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[S_PHONETYPE] AS [S_PHONETYPE],
      x.[PHONENBR] AS [PHONENBR],
      x.[PHONEEXT] AS [PHONEEXT]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_PHONE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
