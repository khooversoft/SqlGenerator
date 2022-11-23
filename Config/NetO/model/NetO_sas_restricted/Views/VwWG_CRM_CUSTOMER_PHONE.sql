-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_CRM_CUSTOMER_PHONE]
AS
   SELECT
      x.[CUSTOMER_ID] AS [CUSTOMER_ID],
      x.[PHONE_TYPE] AS [PHONE_TYPE],
      x.[PHONE_NBR] AS [PHONE_NBR],
      x.[PHONE_EXT] AS [PHONE_EXT]
   FROM [clt_NetO].[WG_CRM_CUSTOMER_PHONE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
