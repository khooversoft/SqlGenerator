-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_CRM_CUSTOMER_PHONE]
AS
   SELECT
      x.[CUSTOMER_ID],
      x.[PHONE_TYPE],
      x.[PHONE_NBR],
      x.[PHONE_EXT]
   FROM [clt_NetO].[WG_CRM_CUSTOMER_PHONE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
