-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TS_PNP_IPG_INVESTOR]
AS
   SELECT
      x.[INVESTORCODE],
      x.[INVESTORNAME],
      x.[MERITCODE],
      x.[INVESTORDESC],
      x.[ENABLED],
      x.[DELFROMMERITDATE],
      x.[CID],
      x.[RATECODE_PFX],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[GF_TS_PNP_IPG_INVESTOR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
