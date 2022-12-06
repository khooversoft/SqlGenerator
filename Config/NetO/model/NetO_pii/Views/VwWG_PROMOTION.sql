-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_PROMOTION]
AS
   SELECT
      x.[PROMO_ID],
      x.[PROMO_CODE],
      x.[PROMO_DESCRIPTION],
      x.[START_DATE],
      x.[END_DATE]
   FROM [clt_NetO].[WG_PROMOTION] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
