-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TS_PNP_IPG_PRICING]
AS
   SELECT
      x.[PRICING_GROUP_CODE] AS [PRICING_GROUP_CODE],
      x.[PRICING_GROUP_NAME] AS [PRICING_GROUP_NAME],
      x.[SRCENV] AS [SRCENV],
      x.[REC_CUSTOM] AS [REC_CUSTOM],
      x.[CREATE_DATE] AS [CREATE_DATE],
      x.[MODIFY_DATE] AS [MODIFY_DATE]
   FROM [clt_NetO].[GF_TS_PNP_IPG_PRICING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
