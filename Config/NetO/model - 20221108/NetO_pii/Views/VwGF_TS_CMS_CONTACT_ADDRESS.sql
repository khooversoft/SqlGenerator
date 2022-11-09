-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_CMS_CONTACT_ADDRESS]
AS
   SELECT
      x.[CID],
      x.[ROWSERIALNO],
      x.[S_ADDRTYPE],
      x.[ADDR1],
      x.[ADDR2],
      x.[CITY],
      x.[COUNTY],
      x.[STATE],
      x.[COUNTRY],
      x.[ZIP],
      x.[TIMEZONE],
      x.[S_CMSADR_UNIT_TYPE],
      x.[CMSADR_UNIT_NUM]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_ADDRESS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
