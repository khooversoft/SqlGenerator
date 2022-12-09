-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwRATECODE]
AS
   SELECT
      x.[USEKEY],
      x.[CURRENTCODE],
      x.[RATECODE],
      x.[COUNTER],
      x.[LOCKDATE],
      x.[BEGINTIME],
      x.[ENDTIME],
      x.[RATEBLOB],
      x.[PRICING_CHANNEL]
   FROM [clt_NetO].[RATECODE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
