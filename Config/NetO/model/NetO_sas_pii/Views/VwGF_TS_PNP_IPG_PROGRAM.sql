-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TS_PNP_IPG_PROGRAM]
AS
   SELECT
      x.[PROGRAMCODE] AS [PROGRAMCODE],
      x.[PROGRAMNAME] AS [PROGRAMNAME],
      x.[SRCENV] AS [SRCENV],
      x.[REC_CUSTOM] AS [REC_CUSTOM],
      x.[CREATE_DATE] AS [CREATE_DATE],
      x.[MODIFY_DATE] AS [MODIFY_DATE]
   FROM [clt_NetO].[GF_TS_PNP_IPG_PROGRAM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
