-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TS_CMS_CONTACT_ADDRESS]
AS
   SELECT
      x.[CID] AS [CID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[S_ADDRTYPE] AS [S_ADDRTYPE],
      x.[ADDR1] AS [ADDR1],
      x.[ADDR2] AS [ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[COUNTY] AS [COUNTY],
      x.[STATE] AS [STATE],
      x.[COUNTRY] AS [COUNTRY],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[TIMEZONE] AS [TIMEZONE],
      x.[S_CMSADR_UNIT_TYPE] AS [S_CMSADR_UNIT_TYPE],
      x.[CMSADR_UNIT_NUM] AS [CMSADR_UNIT_NUM]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_ADDRESS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
