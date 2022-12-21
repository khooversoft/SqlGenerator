-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwRATECODE]
AS
   SELECT
      x.[USEKEY],
      HASHBYTES('SHA2_256', x.[CURRENTCODE]) AS [CURRENTCODE],
      x.[RATECODE],
      x.[COUNTER],
      x.[LOCKDATE],
      x.[BEGINTIME],
      x.[ENDTIME],
      x.[PRICING_CHANNEL]
   FROM [clt_NetO].[RATECODE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
