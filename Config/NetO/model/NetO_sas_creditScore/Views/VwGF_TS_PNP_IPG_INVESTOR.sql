-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwGF_TS_PNP_IPG_INVESTOR]
AS
   SELECT
      HASHBYTES('SHA2_256', x.[INVESTORCODE]) AS [INVESTORCODE],
      HASHBYTES('SHA2_256', x.[INVESTORNAME]) AS [INVESTORNAME],
      x.[MERITCODE] AS [MERITCODE],
      x.[INVESTORDESC] AS [INVESTORDESC],
      x.[ENABLED] AS [ENABLED],
      x.[DELFROMMERITDATE] AS [DELFROMMERITDATE],
      x.[CID] AS [CID],
      x.[RATECODE_PFX] AS [RATECODE_PFX],
      x.[SRCENV] AS [SRCENV],
      x.[REC_CUSTOM] AS [REC_CUSTOM],
      x.[CREATE_DATE] AS [CREATE_DATE],
      x.[MODIFY_DATE] AS [MODIFY_DATE]
   FROM [clt_NetO].[GF_TS_PNP_IPG_INVESTOR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
