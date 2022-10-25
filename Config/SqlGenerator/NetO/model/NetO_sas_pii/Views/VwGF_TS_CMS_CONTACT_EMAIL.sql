-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TS_CMS_CONTACT_EMAIL]
AS
   SELECT
      x.[CID],
      x.[ROWSERIALNO],
      x.[S_EMAILTYPE],
      x.[EMAILADDR]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_EMAIL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
