-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_PNP_IPG_PRODUCT]
AS
   SELECT
      x.[PRODUCTCODE],
      x.[PRODUCTNAME],
      x.[PRODUCTORDER],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[GF_TS_PNP_IPG_PRODUCT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
