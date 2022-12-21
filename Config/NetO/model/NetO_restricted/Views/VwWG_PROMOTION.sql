-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_PROMOTION]
AS
   SELECT
      x.[PROMO_ID],
      x.[PROMO_CODE],
      x.[PROMO_DESCRIPTION],
      HASHBYTES('SHA2_256', CAST(x.[START_DATE] AS NVARCHAR(50))) AS [START_DATE],
      x.[END_DATE]
   FROM [clt_NetO].[WG_PROMOTION] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
