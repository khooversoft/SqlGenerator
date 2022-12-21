-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwRATECODE]
AS
   SELECT
      x.[USEKEY] AS [USEKEY],
      HASHBYTES('SHA2_256', x.[CURRENTCODE]) AS [CURRENTCODE],
      x.[RATECODE] AS [RATECODE],
      x.[COUNTER] AS [COUNTER],
      x.[LOCKDATE] AS [LOCKDATE],
      x.[BEGINTIME] AS [BEGINTIME],
      x.[ENDTIME] AS [ENDTIME],
      x.[PRICING_CHANNEL] AS [PRICING_CHANNEL]
   FROM [clt_NetO].[RATECODE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
