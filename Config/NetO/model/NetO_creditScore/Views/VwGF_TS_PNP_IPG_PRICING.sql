-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TS_PNP_IPG_PRICING]
AS
   SELECT
      x.[PRICING_GROUP_CODE],
      x.[PRICING_GROUP_NAME],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[GF_TS_PNP_IPG_PRICING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
