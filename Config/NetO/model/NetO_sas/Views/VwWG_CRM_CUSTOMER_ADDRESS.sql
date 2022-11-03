-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_CRM_CUSTOMER_ADDRESS]
AS
   SELECT
      x.[CUSTOMER_ID] AS [CUSTOMER_ID],
      x.[ADDRESS_TYPE] AS [ADDRESS_TYPE],
      x.[ADDR_LINE1] AS [ADDR_LINE1],
      x.[ADDR_LINE2] AS [ADDR_LINE2],
      x.[ADDR_LINE3] AS [ADDR_LINE3],
      x.[ADDR_CITY] AS [ADDR_CITY],
      x.[ADDR_STATE] AS [ADDR_STATE],
      x.[ADDR_ZIP] AS [ADDR_ZIP],
      x.[ADDR_COUNTY] AS [ADDR_COUNTY],
      x.[ADDR_COUNTRY] AS [ADDR_COUNTRY],
      x.[ADDR_COUNTYCODE] AS [ADDR_COUNTYCODE],
      x.[ADDR_UNIT] AS [ADDR_UNIT],
      x.[ADDR_PFX] AS [ADDR_PFX],
      x.[ADDR_SUFFIX] AS [ADDR_SUFFIX]
   FROM [clt_NetO].[WG_CRM_CUSTOMER_ADDRESS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
