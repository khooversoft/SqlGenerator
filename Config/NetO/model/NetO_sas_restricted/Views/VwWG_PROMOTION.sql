-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_PROMOTION]
AS
   SELECT
      x.[PROMO_ID] AS [PROMO_ID],
      x.[PROMO_CODE] AS [PROMO_CODE],
      x.[PROMO_DESCRIPTION] AS [PROMO_DESCRIPTION],
      x.[START_DATE] AS [START_DATE],
      x.[END_DATE] AS [END_DATE]
   FROM [clt_NetO].[WG_PROMOTION] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
