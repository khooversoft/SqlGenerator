-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_CRM_CUSTOMER_ADDRESS]
AS
   SELECT
      x.[CUSTOMER_ID],
      x.[ADDRESS_TYPE],
      x.[ADDR_LINE1],
      x.[ADDR_LINE2],
      x.[ADDR_LINE3],
      x.[ADDR_CITY],
      x.[ADDR_STATE],
      x.[ADDR_ZIP],
      x.[ADDR_COUNTY],
      x.[ADDR_COUNTRY],
      x.[ADDR_COUNTYCODE],
      x.[ADDR_UNIT],
      x.[ADDR_PFX],
      x.[ADDR_SUFFIX]
   FROM [clt_NetO].[WG_CRM_CUSTOMER_ADDRESS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
