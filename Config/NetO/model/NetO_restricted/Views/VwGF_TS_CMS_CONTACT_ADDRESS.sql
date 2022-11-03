-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TS_CMS_CONTACT_ADDRESS]
AS
   SELECT
      x.[CID],
      x.[ROWSERIALNO],
      x.[S_ADDRTYPE],
      x.[ADDR1],
      x.[ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[COUNTY],
      x.[STATE],
      x.[COUNTRY],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[TIMEZONE],
      x.[S_CMSADR_UNIT_TYPE],
      x.[CMSADR_UNIT_NUM]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_ADDRESS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
