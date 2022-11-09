-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TS_CMS_CONTACT_PHONE]
AS
   SELECT
      x.[CID],
      x.[ROWSERIALNO],
      x.[S_PHONETYPE],
      x.[PHONENBR],
      x.[PHONEEXT]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_PHONE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
