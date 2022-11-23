-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TS_PNP_PRICE_OFERING]
AS
   SELECT
      x.[PA_DBCODE],
      x.[PA_PRICING_GROUP],
      x.[PA_ORDER]
   FROM [clt_NetO].[GF_TS_PNP_PRICE_OFERING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
