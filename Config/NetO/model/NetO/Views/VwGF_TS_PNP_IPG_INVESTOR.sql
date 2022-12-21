-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TS_PNP_IPG_INVESTOR]
AS
   SELECT
      HASHBYTES('SHA2_256', x.[INVESTORCODE]) AS [INVESTORCODE],
      HASHBYTES('SHA2_256', x.[INVESTORNAME]) AS [INVESTORNAME],
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
