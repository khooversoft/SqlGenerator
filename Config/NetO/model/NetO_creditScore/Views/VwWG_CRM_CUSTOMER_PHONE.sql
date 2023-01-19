-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwWG_CRM_CUSTOMER_PHONE]
AS
   SELECT
      x.[CUSTOMER_ID],
      HASHBYTES('SHA2_256', x.[PHONE_TYPE]) AS [PHONE_TYPE],
      HASHBYTES('SHA2_256', x.[PHONE_NBR]) AS [PHONE_NBR],
      HASHBYTES('SHA2_256', x.[PHONE_EXT]) AS [PHONE_EXT]
   FROM [clt_NetO].[WG_CRM_CUSTOMER_PHONE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
